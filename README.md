## Deployment

1- Change project id in:
```
- deploy.sh
- /frontend/providers.tf
- /frontend/variables.tf
```

2- Create a GCS bucket and upload files to be searched on

3- Create one Search Gen App Builder app and copy/paste the code into `/frontend/templates/index.html`

4- Create one Chat Gen App Builder app and replace the `project-id` and `agent-id` in the same file with the ones from your new app.

4- Configure and finetune both the Search and Infobot using the GCP console

5- Run `deploy.sh` (you may need to run chmod +x deploy.sh first)

6- Setup the OAuth consent screen for IAP from within the GCP console and grant `IAP Web user` role on the IAP app to the users of your choice

