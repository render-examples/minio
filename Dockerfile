FROM minio/minio:latest

EXPOSE 9000
EXPOSE 9001

COPY entrypoint.sh /opt/render/entrypoint.sh

ENTRYPOINT ["/opt/render/entrypoint.sh"]
