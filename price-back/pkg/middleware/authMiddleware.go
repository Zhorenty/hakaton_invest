package middleware

import (
	"fmt"
	"net/http"
	"price-back/pkg/database"
	"strings"

	"github.com/gin-gonic/gin"
	"github.com/golang-jwt/jwt"
)

func AuthMiddleware(db *database.UsersDB) gin.HandlerFunc {
	return func(c *gin.Context) {
		headerString := c.GetHeader("Authorization")

		if headerString == "" {
			c.AbortWithStatusJSON(http.StatusUnauthorized, gin.H{
				"error_message": "`Authorization` header not provided",
			})
		}

		authHeaderParts := strings.Split(headerString, " ")
		if len(authHeaderParts) != 2 || authHeaderParts[0] != "Bearer" {
			c.AbortWithStatusJSON(http.StatusUnauthorized, gin.H{
				"error_message": "invalid `Authorization` header",
			})
		}

		tokenStr := authHeaderParts[1]

		// Parse token
		token, err := jwt.Parse(tokenStr, func(token *jwt.Token) (interface{}, error) {
			// Make sure that token signing method is correct
			if _, ok := token.Method.(*jwt.SigningMethodHMAC); !ok {
				return nil, fmt.Errorf("unexpected signing method: %v", token.Header["alg"])
			}

			// Return the key for verifying signature
			return []byte("secret"), nil
		})

		// Check if there was an error with parsing the token
		if err != nil {
			c.AbortWithStatusJSON(http.StatusUnauthorized, gin.H{"error_message": err.Error()})
			return
		}

		// Check if token is valid
		if !token.Valid {
			c.AbortWithStatusJSON(http.StatusUnauthorized, gin.H{"error_message": "Invalid authorization token"})
			return
		}

		// Pass the token claims to the next handler
		claims, ok := token.Claims.(jwt.MapClaims)

		if ok && token.Valid {
			if !db.UserExist(claims["username"].(string)) {
				c.AbortWithStatusJSON(http.StatusUnauthorized, gin.H{"error_message": "user not exist"})
			}
			c.Set("username", claims["username"])
			c.Next()
		} else {
			c.AbortWithStatusJSON(http.StatusUnauthorized, gin.H{"error_message": "Invalid authorization token"})
			return
		}
	}
}
