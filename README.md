### REACTOR

[drannoc/reactor](https://hub.docker.com/r/drannoc/reactor/)

__Run it with docker-compose (see example) or run `docker run -d -v app:/app -p 3000:3000 drannoc/reactor:latest`.__

This React image does 3 things:

- Fetch all dependencies and start React development server
- Create a base React project (default directory will be /app) if no project exists
- Set working directory and sub-directories' User to1000:1000 (chown -R 1000:1000 /$DIR)

Project creation can take a bit of a long time (Around 1min on my sortof mac from the Wu empire).
Consequence include:
- having time to pat your dog
- quick boredom (in this freakin' fast world, i'm giving you time to take a breath. You're welcome)
- docker status flaging the container as "Unhealthy" for a few seconds

Here's the HEALTHCHECK setting:

`HEALTHCHECK --interval=10s --timeout=30s --start-period=30s --retries=3 CMD curl -f localhost:3000`

__Now you don't need to install nodejs, npm, react, nor a server to run your project.__

