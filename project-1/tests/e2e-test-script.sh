#!/bin/sh

echo "Running e2e tests..."

until nc -z redis 6379; do
    echo "waiting for redis"
    sleep 3s
done

echo "OK: e2e tests"