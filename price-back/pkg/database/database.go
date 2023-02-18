package database

import (
	"fmt"
	"sync"
	"time"

	"github.com/golang-jwt/jwt"
	"github.com/google/uuid"
)

type HouseObj struct {
	Image        string `json:"img_url"`
	Address      string `json:"address"`
	Description  string `json:"description"`
	Price        uint   `json:"price"`
	IsCommercial bool   `json:"is_commercial"`
	IsRisk 			 bool   `json:"is_risk"`
}

type User struct {
	ID       string `json:"id"`
	Username string `json:"username"`
	Password string `json:"password"`
}

type UsersDB struct {
	users map[string]User
	mu    sync.Mutex
}

func NewUserDB() *UsersDB {
	return &UsersDB{
		users: make(map[string]User),
	}
}

func (db *UsersDB) RegisterUser(user User) (string, string, error) {
	db.mu.Lock()
	defer db.mu.Unlock()

	if _, exists := db.users[user.Username]; exists {
		return "", "", fmt.Errorf("user %s already exists", user.Username)
	}

	user.ID = uuid.NewString()
	db.users[user.Username] = user

	token := jwt.NewWithClaims(jwt.SigningMethodHS256, jwt.MapClaims{
		"username": user.Username,
		"exp":      time.Now().Add(time.Hour * 24).Unix(),
	})

	tokenString, err := token.SignedString([]byte("secret"))
	if err != nil {
		return "", "", err
	}

	return user.Username, tokenString, nil
}

func (db *UsersDB) CreateUser(user User) (string, string, error) {
	db.mu.Lock()
	defer db.mu.Unlock()

	if _, exists := db.users[user.Username]; !exists {
		return "", "", fmt.Errorf("user %s not exists", user.Username)
	}

	user.ID = uuid.NewString()

	db.users[user.ID] = user

	token := jwt.NewWithClaims(jwt.SigningMethodHS256, jwt.MapClaims{
		"username": user.Username,
		"exp":      time.Now().Add(time.Hour * 24).Unix(),
	})

	tokenString, err := token.SignedString([]byte("secret"))
	if err != nil {
		return "", "", err
	}

	return user.ID, tokenString, nil
}

func (db *UsersDB) ValidateUser(userName, password string) (*User, error) {
	if !db.UserExist(userName) {
		return nil, fmt.Errorf("user %s not exist", userName)
	}

	user := db.users[userName];
	if user.Password != password {
		return nil, fmt.Errorf("incorrect password")
	}

	return &user, nil
}

func (db *UsersDB) UserExist(userName string) bool {
	_, exist := db.users[userName]
	return exist
}
