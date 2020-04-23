# composer 2 docker

Composer 2 as a docker image, updated monthly until an official image is available.

## Usage

```bash
docker run thekonz/composer2 help

# example usage within a project
docker run -v $(pwd):/app thekonz/composer2 install
```
