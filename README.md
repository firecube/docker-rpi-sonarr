# docker-rpi-sonarr
Dockerfile for Sonarr installation on Raspberry Pi

docker build -t firecube/rpi-sonarr

docker run -d -p 8989:8989 -p 9897:9897 --name=[container name] -v [path for data files]:/data -v [path for media files]:/media -v [path for config files]:/config [docker image]

docker run -d -p 8989:8989 -p 9897:9897 --name=sonarr -v /config -v /mnt/samba/seagate/Torrents/Downloads:/data -v /mnt/samba/seagate/TV:/media --restart=always firecube/rpi-sonarr
