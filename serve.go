package main

import (
	"fmt"
	"net/http"
	"log"
)

func main() {
	log.Fatal(http.ListenAndServe(":8000", http.FileServer(http.Dir("./public"))))
	fmt.Println("Started server on localhost:8000")
}
