#!/usr/bin/env sh
# wrapper for docker entrypoint that takes into account the PORT env var
export MINIO_BROWSER_REDIRECT_URL="$RENDER_EXTERNAL_URL"
exec docker-entrypoint.sh server /data
