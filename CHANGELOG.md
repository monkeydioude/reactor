### 1.2 - 14/04/2018

- Added __NO_INSTALL__ env parameter to avoid npm install if needed
- Default usage of image will try to do npm install

### 1.1 - 15/03/2018

- Set default REACTOR_APP_DIR
- Added docker-compose + env example
- Updated [README.md](./README.md)
- Fixed healthcheck for docker run

### 1.0 - 11/03/2018

- Fetch all dependencies and start React development server
- Create a base React project (default directory will be /app) if no project exists
- Set working directory and sub-directories' User to1000:1000 (chown -R 1000:1000 /$DIR)
