# README

Rails 6 app which interacts with the NASA Open APIs through the [nasa_api](https://github.com/mark-ruddy/nasa_api) gem.  

Currently has pages for APOD(Astronomy Picture of the Day), EPIC(Earth Polychromatic Imaging Camera), Earth Imagery by latitude/longitude and Mars Rover photos.

### Setup

The specs can be run with `rake spec`, ensure the app is in a docker container or the `/config/database.yml` has been modified to run outside a container before running specs

To build and launch the app using docker
```
docker-compose build
docker-compose up
```

[![galaxyviewer.png](https://i.postimg.cc/LsSPnMNr/galaxyviewer.png)](https://postimg.cc/pm0r63NZ)
