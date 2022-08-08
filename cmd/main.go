package main

import (
	"log"
	"net/http"

	function "github.com/courtsite/gcp-monitoring-to-teams"
)

func main() {
	http.HandleFunc("/test", function.ReportAlertToTeams)
	log.Println("server started....")
	http.ListenAndServe(":8777", nil)
}
