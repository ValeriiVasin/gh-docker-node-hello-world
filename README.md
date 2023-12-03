# gh-docker-node-hello-world
Publish and use node projects into github docker registry

### Usage

```yml
# docker-compose.yml
version: '3'

services:
  gh-docker-node-hello-world:
    image: ghcr.io/valeriivasin/gh-docker-node-hello-world:latest
    container_name: gh-docker-node-hello-world
    ports:
      - 3000:3000
    restart: unless-stopped
```
