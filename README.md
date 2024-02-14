# RESF Community Team Wiki

@TODO - fill in :)

## Continuous Integration / Continuous Deployment

Actions Runner executes workflow to publish to https://community.rocky.page on push to main.

## Building Locally

In order to build this wiki locally, a docker-compose configuration and container file are supplied which when invoked, will launch mkdocs' development server in a container bound to port 8000 and will live-reload when changes are made to the wiki files.

To run the containers on your system, invoke podman or docker compose like so:

```
podman-compose -f docker-compose.yml up -d
```

The container will build and then launch itself. Afterwards, you should be able to view the wiki content at http://localhost:8000. 

The compose file accepts a build argument if you need to run it on a different port. For example, to bind to port 8080 on your local machine:

```
podman-compose -f docker-compose --build-arg PORT=8080 up -d
```

## Project layout

    mkdocs.yml    # The configuration file.
    README.md     # This file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.
