package routes

import (
	"bytes"
	"encoding/json"
	"io/ioutil"
	"net/http"
	"price-back/pkg/database"
	"time"

	"github.com/gin-gonic/gin"
	"github.com/golang-jwt/jwt"
)

type PredictionReq struct {
	MedInc     float32 `json:"med_inc"`
	HouseAge   float32 `json:"house_age"`
	AveRooms   float32 `json:"ave_rooms"`
	AveBedrms  float32 `json:"ave_bedrms"`
	Population float32 `json:"population"`
	AveOccup   float32 `json:"ave_occup"`
	Latitude   float32 `json:"latitude"`
	Longitude  float32 `json:"longitude"`
}

func Ping(c *gin.Context) {
	c.JSON(http.StatusOK, gin.H{
		"message": "pong",
	})
}

func RegistrateUser(db *database.UsersDB) gin.HandlerFunc {
	return func(c *gin.Context) {
		var user database.User

		if err := c.BindJSON(&user); err != nil {
			c.JSON(400, gin.H{
				"error_message": err.Error(),
			})
			return
		}

		userName, token, err := db.RegisterUser(user)
		if err != nil {
			c.JSON(400, gin.H{
				"error_message": err.Error(),
			})
			return
		}

		c.JSON(200, gin.H{
			"user_name": userName,
			"token":     token,
		})
	}
}

func LoginUser(db *database.UsersDB) gin.HandlerFunc {
	return func(c *gin.Context) {
		var user database.User

		if err := c.BindJSON(&user); err != nil {
			c.JSON(http.StatusUnauthorized, gin.H{
				"error_message": err.Error(),
			})
			return
		}

		dbUser, err := db.ValidateUser(user.Username, user.Password)
		if err != nil {
			c.JSON(http.StatusUnauthorized, gin.H{
				"error_message": err,
			})
		}

		token := jwt.NewWithClaims(jwt.SigningMethodHS256, jwt.MapClaims{
			"username": dbUser.Username,
			"exp":      time.Now().Add(time.Hour * 24).Unix(),
		})

		tokenString, err := token.SignedString([]byte("secret"))
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{
				"error_message": err,
			})
		}

		c.JSON(200, gin.H{
			"user_name": dbUser.Username,
			"token":     tokenString,
		})
	}
}

func GetPrediction(db *database.UsersDB) gin.HandlerFunc {
	return func(c *gin.Context) {
		var request PredictionReq

		if err := c.BindJSON(&request); err != nil {
			c.JSON(400, gin.H{
				"error_message": err.Error(),
			})
			return
		}
		floats := []float32{
			request.MedInc,
			request.HouseAge,
			request.AveRooms,
			request.AveBedrms,
			request.Population,
			request.AveOccup,
			request.Latitude,
			request.Longitude,
		}

		// Convert the array of floats to a byte array
		data, err := json.Marshal(floats)
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{
				"error_message": "Failed to convert floats to JSON",
			})
			return
		}

		req, err := http.NewRequest("POST", "http://localhost:8000/predict", bytes.NewBuffer(data))
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error_message": "Failed to create request to python server"})
			return
		}

		res, err := http.DefaultClient.Do(req)
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{
				"error_message": "Failed to do HTTP request",
			})
		}
		defer res.Body.Close()

		body, err := ioutil.ReadAll(res.Body)
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{
				"error_message": "Failed to read HTTP response",
			})
		}

		c.JSON(res.StatusCode, gin.H{
			"response": string(body),
		})
	}
}
