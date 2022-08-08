deploy:
	gcloud functions deploy gcp-monitoring-to-teams \
        --entry-point=ReportAlertToTeams \
        --memory=128MB \
        --region=us-central1 \
        --runtime=go116 \
        --env-vars-file=.env.yaml \
        --trigger-http \
        --timeout=10s