# MinIO on Render

This template repository can be used to run [MinIO](https://min.io) on Render in a single click. It features SSD storage with automatic backups and fully managed TLS for your MinIO object store.

Click the button below to deploy MinIO to your Render account:

[![Deploy to Render](http://render.com/images/deploy-to-render-button.svg)](https://dashboard.render.com/iac/new?repoOwner=render-examples&repoName=minio&branch=master&provider=GITHUB)

This will create a public MinIO instance with automatically generated access and secret keys as environment variables. You can see their values under the Environment section of your Render service.

## Running Locally

if you are having problems and want to debug, you can run the container locally

```bash
docker build -t minio .
docker run -p 9000:9000 -p 9001:9001 -e MINIO_ROOT_USER=admin -e MINIO_ROOT_PASSWORD=secretpwd minio
```

then take your browser and go to [http://localhost:9000](http://localhost:9000) and login with the credentials used in the docker run command
