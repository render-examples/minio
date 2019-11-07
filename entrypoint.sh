#!/usr/bin/env sh
# wrapper for docker entrypoint that takes into account the PORT env var

exec docker-entrypoint.sh server --address ":${PORT:-9000}" /data
