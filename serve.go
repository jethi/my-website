package main

import (
	"fmt"
	"net/http"
	"log"
)

func main() {
	fmt.Println("Starting server on localhost:8000")
	log.Fatal(http.ListenAndServe(":8000", http.FileServer(http.Dir("./public"))))
}
