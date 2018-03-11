### REACTOR

[drannoc/reactor](https://hub.docker.com/r/drannoc/reactor/)

This React image does 3 things:

- Fetch all dependencies and start React development server
- Create a base React project (default directory will be /app) if no project exists
- Set working directory and sub-directories' User to1000:1000 (chown -R 1000:1000 /$DIR)


__Now you don't need to install nodejs, npm, react, nor a server to run your project.__
