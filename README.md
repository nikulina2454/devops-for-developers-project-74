### CI status
[![Actions Status](https://github.com/nikulina2454/devops-for-developers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/nikulina2454/devops-for-developers-project-74/actions)
[![Push Workflow](https://github.com/nikulina2454/devops-for-developers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/nikulina2454/devops-for-developers-project-74/actions/workflows/push.yml)

## Requirements
- Docker Engine with Docker Compose plugin
- GNU Make

## Docker Hub image
- `nikulina2454/devops-for-developers-project-74`
- [https://hub.docker.com/r/nikulina2454/devops-for-developers-project-74](https://hub.docker.com/r/nikulina2454/devops-for-developers-project-74)

## Environment variables
Create `.env` in repository root (or use defaults from compose):

```env
DATABASE_HOST=db
DATABASE_NAME=postgres
DATABASE_USERNAME=postgres
DATABASE_PASSWORD=password
DATABASE_PORT=5432
```

## Commands
- `make setup` - install app dependencies in Docker
- `make ci` - run tests in Docker Compose (CI entrypoint)
- `make test` - alias for `make ci`
- `make dev` - run local development stack (`app`, `db`, `caddy`)
- `make build` - build production image from `Dockerfile.production`
- `make push` - push `latest` image to Docker Hub
- `make down` - stop and remove compose services