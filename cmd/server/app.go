package main

import (
	"fmt"

	database "github.com/dizzastuh/winterval-postgres/internal/db"
)

func main() {
	// Connect to the database
	_, err := database.Connect()

	fmt.Println("Successfully made connection: %v", err != nil)
}
