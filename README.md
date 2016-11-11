Hello Ngnix Server
===================


### Create Certificate

https://weakdh.org/sysadmin.html
https://gist.github.com/plentz/6737338

```
$> openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout server.key -out server.crt
$> openssl dhparam -out dhparam.pem 2048
```

###　Run Server 
```
$>　docker-compose.exe up
```

### Going to Container
```
$> docker exec -it nginx_proxy_1 sh
```


### Read Log 
```
$> docker logs nginx_proxy_1
```