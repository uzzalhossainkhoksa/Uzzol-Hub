#!/usr/bin/env bash
# Simple gh-pages deploy stub
echo "Building and deploying static site (stub)"
git add .
git commit -m "deploy: static update" || true
git push origin main
