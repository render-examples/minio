# MinIO on Render

This template repository can be used to run a single node [MinIO](https://min.io) server on Render in a single click. It features SSD storage with automatic backups and fully managed TLS for MinIO.

Click the button below to deploy MinIO to your Render account:

[![Deploy to Render](http://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

This will create two web services:
* A public MinIO S3-compatible API server with automatically generated username and password environment variables. This server does not include the MinIO web console, which is a separate service. Admin credentials can be found under **Environment** in the Render dashboard.
* A web console for MinIO. You can use the username and password generated for the API server to log in, but MinIO does not recommend it for security reasons. Instead, create a new user with the [`mc`](https://min.io/docs/minio/linux/reference/minio-mc.html) CLI. You can use the instructions at https://github.com/minio/console#setup.

The two services above are defined in `render.yaml` and can be customized as needed. Note that you don't need to run the console; you can deploy MinIO and interact with it using `mc`, MinIO's command line tool linked above. To do this, remove the `minio-console` web service from `render.yaml`.
