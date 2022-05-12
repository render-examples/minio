# MinIO on Render

This template repository can be used to run [MinIO](https://min.io) on Render in a single click. It features SSD storage with automatic backups and fully managed TLS for your MinIO object store.

Click the button below to deploy MinIO to your Render account:

[![Deploy to Render](http://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

This will create a public MinIO instance with automatically generated username and password for the web console. You can see their values under the Environment section of your Render service.

The MinIO web console and MinIO API listen on different ports. Because Render only exposes one port publicly for Web Services, you must decide which you want to expose. By default, the console is exposed publicly. Change `PORT` to `9000` to switch to the API being exposed publicly. You can see (or modify) the console and API port definitions in this repository's `entrypoint.sh` file.

## Running Locally

Use the following commands to run the container locally similar to how it's run on Render.

```bash
git clone git@github.com:render-examples/minio.git
cd minio
docker build -t minio .
docker run -p 9000:9000 -p 10000:10000 -v data:/data -e MINIO_ROOT_USER=admin -e MINIO_ROOT_PASSWORD=secretpwd minio
```

Then go to [http://localhost:9000](http://localhost:9000) in a browser and login with the credentials specified in the `docker run` command.
