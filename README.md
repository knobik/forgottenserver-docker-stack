# Getting started

## Requirements
- docker
- docker-compose
- git (only if starting fresh)

### I'm a parcel, i need help starting.
This script will download the latest server `data` from [otland/forgottenserver](https://github.com/otland/forgottenserver) repository.
_Reminder: You don't need to run this if you already have the `data` directory from your previous server. Just copy it to this project root replacing the existing one. Alternatively you can edit the appropriate volume in `docker-compose.yml` file._
```shell
./download-data.sh
```

### Server configuration
Standard TFS `config.lua` applies here. Just edit the file in this project root, or override it with your version.
If you want to edit the database login/password, you need to edit it both in `config.lua` and `docker-compose.yml`

### Start up the stack
```shell
docker-compose up -d
```

### Kill the stack
```shell
docker-compose down
```

### Restart the OTS server (does not restart the mysql)
```shell
docker-compose restart server
```
