#!/bin/sh -

podman run -d --security-opt label=disable -v jellyfin-config:/config -v jellyfin-cache:/cache -v /home/piechota/In-Music:/media --net=host --name=jellyfin jellyfin/jellyfin:latest


