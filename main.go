package main

import (
	"fmt"
	"log"
	"net/http"
	"os"

	"wsf/devops/handler"
)

func main() {

	// port := "8080"
	port := os.Getenv("PORT") // le port est égale à celui définit par Heroku
	if port == "" {
		port = "8080"
	}

	myHandler := handler.NewHandler()

	server := &http.Server{
		Addr:    ":" + port,
		Handler: myHandler,
	}

	fmt.Println("Test")
	fmt.Println("Server is running at", port)

	log.Fatal(server.ListenAndServe())
}
