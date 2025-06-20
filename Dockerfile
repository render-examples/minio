FROM quay.io/minio/minio

CMD ["server", "/data", "--console-address", ":9001"]
