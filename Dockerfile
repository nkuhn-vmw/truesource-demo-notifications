# Intentionally old base images: a TrueSource Viewer demo, do not build or deploy.
FROM node:18.12.0-alpine
WORKDIR /app
CMD ["echo", "This demo is not meant to run."]
