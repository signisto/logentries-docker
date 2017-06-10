# Logentries Docker

This is a very simple tool for sending a single log file to [Logentries](https://logentries.com).


## Usage

The following variables are **required** to be set.

| Key                | Description
|--------------------|--------------------------------------------|
| LE_NAME            | Name of the st you're sending data to      |
| LE_TOKEN           | The key for your logset                    |
| LE_PATH            | Absolute path for the file to send         |
| LE_DESTINATION     | Location in your Logentries account        |

``` shell
docker run -e LE_NAME=test -e LE_TOKEN=XXX -e LE_PATH=/var/log/nginx/access.log signisto/logentries-docker
```


## License

This repository is licensed the MIT License
