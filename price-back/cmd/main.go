package main

import (
	"net/http"
	"price-back/pkg/database"
	"price-back/pkg/middleware"
	"price-back/pkg/routes"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()
	db := database.NewUserDB()

	router.GET("/ping", routes.Ping)
	v1 := router.Group("/v1")
	{
		v1.POST("/register", routes.RegistrateUser(db))
		v1.POST("/login", routes.LoginUser(db))

		protect := v1.Group("/protect")
		protect.Use(middleware.AuthMiddleware(db))
		protect.GET("/prediction", routes.GetPrediction(db))
		protect.GET("/check", func(ctx *gin.Context) {
			ctx.JSON(http.StatusOK, gin.H{
				"message": "auth OK",
			})
		})
	}

	router.Run(":8080")
}
