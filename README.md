This is a set of scripts I've thrown together.

Installation
---

These scripts are self-contained.  The included `Makefile` simply
symlinks them into your `PATH`.

Copy `config/weather.config.json` to `$HOME/.config/$USER/weather.json`
and modify as mentioned below.

Explanation
---

`geo-fetch` gets location data using IP geolocation.  If you need
this, run it on initial startup (e.g. cron's `@reboot` or `systemd
--user`).  *WARNING:* `geo-fetch` uses [IP-API](https://ip-api.com/)
which does *everything over HTTP on its free plan!* If this becomes an
issue I'll look at an alternative.

`wx-fetch` gets weather data from
[OpenWeatherMap](https://openweathermap.org/).  You'll need an API key
from them; it's free if you stay under the usage limits.  An example
config file lives under `config`; copy it to
`$HOME/.config/$USER/weather.json`.  Set `location` to `geolocate` to
use the data from `geo-fetch` for location. Otherwise, you can get the
`location` ID from OpenWeatherMap by doing a search for your city on
the site and grabbing the numeric ID in the URL.

`wx` simply reads the cached data pulled down by `wx-fetch`.  Run
`wx minimal` for something that can be used in e.g. `i3blocks`.

License
---

ISC.
