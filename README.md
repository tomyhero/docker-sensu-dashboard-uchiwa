DOCKER UCHIWA
=============


SETUP
-----


```
git clone https://github.com/tomyhero/docker-sensu-dashboard-uchiwa.git
cd docker-sensu-dashboard-uchiwa
docker build -t tomyhero/sensu-dashboard-uchiwa . 

docker run --name=sensu-dashboard-uchiwa -it -d \ 
    -p 11003:3000 -e="SENSU_HOST=example.com" -e="SENSU_PORT=80"  \
    tomyhero/sensu-dashboard-uchiwa

```
