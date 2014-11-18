# rtmp-authenticator

cine.io [Docker](https://docker.com/) container listens to messages on the MACHINE-vod_translator-incoming queue, processes them, and puts a new message on the MACHINE-vod_bookeeper-incoming queue.

# Usage

```bash
$ docker run --rm -it -e REDIS_HOST="growlsworth.local" -e EDGECAST_TOKEN="" -e EDGECAST_FTP_HOST="" -e EDGECAST_FTP_USER="" -e EDGECAST_FTP_PASSWORD=""  -e MONGOHQ_URL="mongodb://growlsworth.local/cineio-development" -v /Users/thomas/work/tmp:/data/tmp cine/rtmp-authenticator
```

# Notes

1. You may have difficulty connecting to redis. Default redis configureation is to not allow connections from other ip addresses.
  * you might have to edit `/usr/local/etc/redis.conf`
