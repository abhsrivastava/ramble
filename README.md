# Ramble is an application which helps people in washington state find a hike

The biggest impediment for hiking in washington state is the weather. We have to search for hours to find a place where its not raining, snowing or windy so that we can find hikes in that area.

Ramble does the following (1) maintains a database of all zip codes of washington state where there are trails (2) queries the weather api to find forecast of places where its "not raining/snowing/windy" and recommends hikes in those zip codes.

The objective is to save time and quickly find a place to hike!

Ramble uses Free open-source API [open-meteo](https://open-meteo.com) as the data source. 

# Build
```
npm run build
```

# Watch

```
npm run watch
```

# Bundle

```
npm run bundle
```

# Serve
```
npm run serve
```

# Future roadmap

In future, we have to add the following features (1) Use some API to find the status of the roads to the trailhead. (2) Use Maps to visualize the data and (3) has anyone does this hike recently. Right now we don't know if there are APIs to get this information. 