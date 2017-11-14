# docker-base

`ubuntu-base` folder, there are files to build Docker base image with script, that checks `server.init` folder for .sh files and execute them in order, in based on this image images.

`ubuntu-pma` folder, there are files to build Docker image with phpMyAdmin. If you want to add or remove DB servers to the list of servers, you must mounth db_hosts.php file to container with:
`-v $(pwd)/server.init/pma/db_hosts.php:/var/www/html/db_hosts.php`
After making changes to configuration you must refresh page.

Example: 
```
docker run -d --link mysql:mysql -p 80:80 -v $(pwd)/server.init/pma/db_hosts.php:/var/www/html/db_hosts.php --name pma example-pma-image
```
