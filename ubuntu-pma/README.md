ubuntu-pma
==========

[ubuntu-base]: ../ubuntu-base

A Docker image with PhpMyAdmin preinstalled.

**NOTE:** It is based on [ubuntu-base][ubuntu-base] so you have to build the base image first.

If you want edit the servers list, you can mount local db_hosts.php file into container like this:

```shell
docker run --rm -v $(pwd)/server.init/pma/db_hosts.php:/var/www/html/db_hosts.php
```
Changes are applied on the fly so you don't have to restart the container - simply refresh the page.

Examples
--------

```shell
docker run -d --link mysql:mysql -p 80:80 -v $(pwd)/server.init/pma/db_hosts.php:/var/www/html/db_hosts.php --name pma <name_of_pma_image>
```
