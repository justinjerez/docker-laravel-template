# Docker Laravel Template

This is a basic docker configuration for laravel for local development, use in production at you own risk.

## Containers

I'll be adding more services in the future as I require to use them, for now the current services available in the configuration are:

- Nginx:`8000`
- PHP v8.2.3: `9000`
- Redis: `6379`
- Mysql: `3306`
- PHPMyAdmin: `8080`

### Additional Containers

Additionally, there are some others container that will help executing commands, those are:

- Composer
- Artisan
- NPM
 
## How to use it

To successfully use this docker configuration for existing or future projects, follow the instructions down below:

- First make sure you have [Docker](https://docs.docker.com/desktop/) installed on your computer.
- Clone this repository, once you've cloned it, open it in the file explorer and open a new terminal.
- To use existing laravel project or create a new one, follow the instructions from the `src/README.md` file.
- Finally, to run the application, execute the following command in your terminal `docker-compose up -d --build`. This will build and run all the containers.
- Visit your application at `localhost:8000` in your web browser.

## Additional Instructions

There are some addons to facilitate some task like managing your databases, to take advantage of those features you can check the following instructions:

- To access PHPMyAdmin you can go to `localhost:8080` in your web browser.
- To execute commands from the helper container like `Composer` run the following command `docker-compose run --rm`, followed by the name of the container you want to execute the command from and finally the command, for example `docker-compose run --rm composer -V`.