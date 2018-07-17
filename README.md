## Jelastic CLI

[Jelastic CLI](https://docs.jelastic.com/cli) in a container. No need to install Java libraries directly on your system.

The image weighs about 160MB and provides full Jelastic CLI functionality.

### Docker image

Docker image made by good people at [Layershift](http://www.layershift.com/jelastic).

* Dockerfile: https://github.com/layershift/jelastic-cli/blob/master/Dockerfile
* Repository: https://hub.docker.com/r/layershift/jelastic-cli/

### Setup

```
docker pull layershift/jelastic-cli
```


### Running

To run the container, specify the following variables:

* `J_LOGIN` - your Jelastic login
* `J_PASSWORD` - your Jelastic password
* `J_PLATFORM` - app.j.layershift.co.uk

Run the image interactively with:

```
docker run -it --rm \
  -e "J_LOGIN=you@domain.com" \
  -e "J_PASSWORD=password" \
  -e "J_PLATFORM=app.j.layershift.co.uk" \
layershift/jelastic-cli
```

or concatenate commands such as

```
docker run -it --rm \
  -e "J_LOGIN=you@domain.com" \
  -e "J_PASSWORD=password" \
  -e "J_PLATFORM=app.j.layershift.co.uk" \
layershift/jelastic-cli "/root/jelastic/environment/control/startenv --silent true --envName my-environment-name"
```
# LICENSE

Licensed under GNU LGPLv3

