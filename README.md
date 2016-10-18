# leo-help
誰か(leo)がなにかいうたびに「助けて」って言う。

## Requirements
- Docker

## Install
```sh
git clone git@github.com:nicofun/leo-help.git
cd leo-tasukete
vim .env
cat .env
token=slack-api-token
name=username-who-talked-to-tasukete
docker build -t leo-help .
docker run --env-file .env --rm leo-help
