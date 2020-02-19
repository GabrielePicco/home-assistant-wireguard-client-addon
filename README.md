# Home Assistant Wireguard Client Add-On

1. Follow this tutorial for creating a wireguard server instance on a Amazon EC2 free tier:
https://habr.com/en/post/449234/#_2-2-3-ip-address-overview

2. Clone this repository in home assistant

3. Generate a wg0-client.conf in the server and copy it in the repository folder

4. Install and start the plugin


## Current issue: 

`ip6tables-restore -n is failing`

![alt text](https://i.imgur.com/URrk9mm.png "")
