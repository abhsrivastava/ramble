type metadata = {
  id: string,
  gridId: string,
  latitude: float,
  longitude: float,
  metadataUrl: string,
  trailhead: string,
  gridX: int,
  gridY: int,
  forecastHourly: string,
  forecastZone: string, 
  county: string,
  radarStation: string,
  city: string
}

type groupedMetadata = {
  url: string,
  metadataArray: array<metadata>
}

let jsonStr = `
[
  {
    "url": "https://api.weather.gov/gridpoints/SEW/150,64/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6397,-121.5288",
        "gridId": "SEW",
        "latitude": 47.6397339990702,
        "longitude": -121.528801001031,
        "metadata-url": "https://api.weather.gov/points/47.6397,-121.5288",
        "trailhead": "Bare Mountain Trailhead",
        "gridX": 150,
        "gridY": 64,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/150,64/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Baring"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/153,100/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8882,-117.1249",
        "gridId": "OTX",
        "latitude": 47.8881938023765,
        "longitude": -117.124885949979,
        "metadata-url": "https://api.weather.gov/points/47.8882,-117.1249",
        "trailhead": "Mount Spokane State Park - Mount Kit Carson Trail",
        "gridX": 153,
        "gridY": 100,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/153,100/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC063",
        "radarStation": "KOTX",
        "city": "Green Bluff"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/90,186/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3115,-120.5322",
        "gridId": "PDT",
        "latitude": 47.3114942040065,
        "longitude": -120.532185473091,
        "metadata-url": "https://api.weather.gov/points/47.3115,-120.5322",
        "trailhead": "Mount Lillian",
        "gridX": 90,
        "gridY": 186,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/90,186/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Wenatchee"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/103,154/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.823,-118.9297",
        "gridId": "OTX",
        "latitude": 48.8230199987587,
        "longitude": -118.929712999821,
        "metadata-url": "https://api.weather.gov/points/48.823,-118.9297",
        "trailhead": "Virginia Lilly Trailhead",
        "gridX": 103,
        "gridY": 154,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/103,154/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KOTX",
        "city": "Curlew Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/114,141/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5844,-118.5326",
        "gridId": "OTX",
        "latitude": 48.584393998679,
        "longitude": -118.53262199982,
        "metadata-url": "https://api.weather.gov/points/48.5844,-118.5326",
        "trailhead": "Snow Peak Trailhead",
        "gridX": 114,
        "gridY": 141,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/114,141/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC019",
        "radarStation": "KOTX",
        "city": "Pine Grove"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/155,105/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.488,-121.6142",
        "gridId": "SEW",
        "latitude": 48.4879942570588,
        "longitude": -121.614185005658,
        "metadata-url": "https://api.weather.gov/points/48.488,-121.6142",
        "trailhead": "Rockport State Park",
        "gridX": 155,
        "gridY": 105,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/155,105/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "Rockport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/78,73/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4974,-123.7932",
        "gridId": "SEW",
        "latitude": 47.4973899996836,
        "longitude": -123.793209999219,
        "metadata-url": "https://api.weather.gov/points/47.4974,-123.7932",
        "trailhead": "Colonel Bob Trailhead",
        "gridX": 78,
        "gridY": 73,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/78,73/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Amanda Park"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/93,147/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6383,-119.2032",
        "gridId": "OTX",
        "latitude": 48.6383189993781,
        "longitude": -119.203207999743,
        "metadata-url": "https://api.weather.gov/points/48.6383,-119.2032",
        "trailhead": "Bannon Mountain Trailhead",
        "gridX": 93,
        "gridY": 147,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/93,147/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KOTX",
        "city": "Tonasket"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/154,121/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0583,-121.541",
        "gridId": "PQR",
        "latitude": 46.0582919990048,
        "longitude": -121.540966000207,
        "metadata-url": "https://api.weather.gov/points/46.0583,-121.541",
        "trailhead": "Trailhead: Buck Creek-Lower",
        "gridX": 154,
        "gridY": 121,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/154,121/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/135,66/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6164,-121.9923",
        "gridId": "SEW",
        "latitude": 47.6163943443074,
        "longitude": -121.992285159266,
        "metadata-url": "https://api.weather.gov/points/47.6164,-121.9923",
        "trailhead": "Soaring Eagle Park",
        "gridX": 135,
        "gridY": 66,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/135,66/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Ames Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/42,126/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0245,-120.6502",
        "gridId": "OTX",
        "latitude": 48.0245019989835,
        "longitude": -120.650212001035,
        "metadata-url": "https://api.weather.gov/points/48.0245,-120.6502",
        "trailhead": "Entiat River Trailhead",
        "gridX": 42,
        "gridY": 126,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/42,126/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/151,116/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7070999,-121.8126",
        "gridId": "SEW",
        "latitude": 48.7070619987414,
        "longitude": -121.812563999656,
        "metadata-url": "https://api.weather.gov/points/48.7071,-121.8126",
        "trailhead": "Park Butte Trailhead",
        "gridX": 151,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/151,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Concrete"
      },
      {
        "id": "https://api.weather.gov/points/48.7072,-121.8127",
        "gridId": "SEW",
        "latitude": 48.7072119982597,
        "longitude": -121.812736999686,
        "metadata-url": "https://api.weather.gov/points/48.7072,-121.8127",
        "trailhead": "Mt. Baker National Recreation Area",
        "gridX": 151,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/151,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Concrete"
      },
      {
        "id": "https://api.weather.gov/points/48.707,-121.8128",
        "gridId": "SEW",
        "latitude": 48.7070489994109,
        "longitude": -121.812801000383,
        "metadata-url": "https://api.weather.gov/points/48.707,-121.8128",
        "trailhead": "Squak Climbing Route",
        "gridX": 151,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/151,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Concrete"
      },
      {
        "id": "https://api.weather.gov/points/48.7070999,-121.8126",
        "gridId": "SEW",
        "latitude": 48.7070619987414,
        "longitude": -121.812563999656,
        "metadata-url": "https://api.weather.gov/points/48.7071,-121.8126",
        "trailhead": "Easton Glacier Climbing Route",
        "gridX": 151,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/151,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Concrete"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/145,128/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1652,-121.8716",
        "gridId": "PQR",
        "latitude": 46.1652059996302,
        "longitude": -121.87163200012,
        "metadata-url": "https://api.weather.gov/points/46.1652,-121.8716",
        "trailhead": "Trailhead: Wright Meadows",
        "gridX": 145,
        "gridY": 128,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/145,128/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      },
      {
        "id": "https://api.weather.gov/points/46.1662,-121.8674",
        "gridId": "PQR",
        "latitude": 46.1661589988758,
        "longitude": -121.867353000119,
        "metadata-url": "https://api.weather.gov/points/46.1662,-121.8674",
        "trailhead": "Trailhead: Middle Falls",
        "gridX": 145,
        "gridY": 128,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/145,128/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/78,101/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.076,-123.9539",
        "gridId": "SEW",
        "latitude": 48.0759539989307,
        "longitude": -123.953934999607,
        "metadata-url": "https://api.weather.gov/points/48.076,-123.9539",
        "trailhead": "Fairholme Olympic Discovery Trailhead",
        "gridX": 78,
        "gridY": 101,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/78,101/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Clallam Bay"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/163,100/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4266999,-121.3692",
        "gridId": "SEW",
        "latitude": 48.4266999986141,
        "longitude": -121.369249000017,
        "metadata-url": "https://api.weather.gov/points/48.4267,-121.3692",
        "trailhead": "Slide Lake Trailhead",
        "gridX": 163,
        "gridY": 100,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/163,100/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "Marblemount"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/59,169/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.8335999,-121.352",
        "gridId": "PDT",
        "latitude": 46.833599998809,
        "longitude": -121.351999999022,
        "metadata-url": "https://api.weather.gov/points/46.8336,-121.352",
        "trailhead": "Fish Lake Way Trailhead",
        "gridX": 59,
        "gridY": 169,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/59,169/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KATX",
        "city": "Cliffdell"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/36,110/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6714,-120.755",
        "gridId": "OTX",
        "latitude": 47.67139999876,
        "longitude": -120.75500000075,
        "metadata-url": "https://api.weather.gov/points/47.6714,-120.755",
        "trailhead": "Hatchery Creek Trailhead",
        "gridX": 36,
        "gridY": 110,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/36,110/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/138,17/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.6087,-121.6269",
        "gridId": "SEW",
        "latitude": 46.6086529992027,
        "longitude": -121.626905999521,
        "metadata-url": "https://api.weather.gov/points/46.6087,-121.6269",
        "trailhead": "Trailhead: Packwood Lake",
        "gridX": 138,
        "gridY": 17,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/138,17/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/43,126/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0209,-120.6409",
        "gridId": "OTX",
        "latitude": 48.0208509993669,
        "longitude": -120.64090099909,
        "metadata-url": "https://api.weather.gov/points/48.0209,-120.6409",
        "trailhead": "Cottonwood Cabin",
        "gridX": 43,
        "gridY": 126,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/43,126/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/60,83/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6414,-124.385",
        "gridId": "SEW",
        "latitude": 47.6413715769253,
        "longitude": -124.385027209953,
        "metadata-url": "https://api.weather.gov/points/47.6414,-124.385",
        "trailhead": "Salt Spray Forest (Beach 3) Nature Trail",
        "gridX": 60,
        "gridY": 83,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/60,83/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ516",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KLGX",
        "city": "Queets"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/141,23/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.7516,-121.5571",
        "gridId": "SEW",
        "latitude": 46.7515943462568,
        "longitude": -121.557085430477,
        "metadata-url": "https://api.weather.gov/points/46.7516,-121.5571",
        "trailhead": "Laughingwater Creek to Three Lakes",
        "gridX": 141,
        "gridY": 23,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/141,23/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/37,130/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0832,-120.835",
        "gridId": "OTX",
        "latitude": 48.0831999990412,
        "longitude": -120.835000000541,
        "metadata-url": "https://api.weather.gov/points/48.0832,-120.835",
        "trailhead": "Phelps Creek Trailhead",
        "gridX": 37,
        "gridY": 130,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/37,130/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      },
      {
        "id": "https://api.weather.gov/points/48.0759,-120.853",
        "gridId": "OTX",
        "latitude": 48.0758999998487,
        "longitude": -120.852999998942,
        "metadata-url": "https://api.weather.gov/points/48.0759,-120.853",
        "trailhead": "Trinity Trailhead",
        "gridX": 37,
        "gridY": 130,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/37,130/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/143,22/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.7408,-121.4942",
        "gridId": "SEW",
        "latitude": 46.7407699990739,
        "longitude": -121.49423000034,
        "metadata-url": "https://api.weather.gov/points/46.7408,-121.4942",
        "trailhead": "Trailhead: Carlton Creek",
        "gridX": 143,
        "gridY": 22,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/143,22/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/147,87/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0831,-121.7739",
        "gridId": "SEW",
        "latitude": 48.0830889983126,
        "longitude": -121.773883000852,
        "metadata-url": "https://api.weather.gov/points/48.0831,-121.7739",
        "trailhead": "Heather Lake Trailhead",
        "gridX": 147,
        "gridY": 87,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/147,87/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Verlot"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/147,95/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.2509,-121.8172",
        "gridId": "SEW",
        "latitude": 48.25089429221,
        "longitude": -121.817185032833,
        "metadata-url": "https://api.weather.gov/points/48.2509,-121.8172",
        "trailhead": "Boulder River",
        "gridX": 147,
        "gridY": 95,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/147,95/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Swede Heaven"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/168,103/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4956,-121.2049",
        "gridId": "SEW",
        "latitude": 48.4956149991715,
        "longitude": -121.204931999778,
        "metadata-url": "https://api.weather.gov/points/48.4956,-121.2049",
        "trailhead": "Hidden Lake Lookout",
        "gridX": 168,
        "gridY": 103,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/168,103/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "Marblemount"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/129,11/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.4387,-121.8526",
        "gridId": "SEW",
        "latitude": 46.4386943957432,
        "longitude": -121.85258545195,
        "metadata-url": "https://api.weather.gov/points/46.4387,-121.8526",
        "trailhead": "Cispus Braille Trail",
        "gridX": 129,
        "gridY": 11,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/129,11/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/81,153/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.4122,-123.94",
        "gridId": "PQR",
        "latitude": 46.4121946183097,
        "longitude": -123.939985133376,
        "metadata-url": "https://api.weather.gov/points/46.4122,-123.94",
        "trailhead": "Willapa National Wildlife Refuge - Long Island",
        "gridX": 81,
        "gridY": 153,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/81,153/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/PZZ251",
        "county": "",
        "radarStation": "KLGX",
        "city": "Long Beach"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/179,111/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7064,-120.9188",
        "gridId": "SEW",
        "latitude": 48.7064299989567,
        "longitude": -120.918759999176,
        "metadata-url": "https://api.weather.gov/points/48.7064,-120.9188",
        "trailhead": "Canyon Creek Trailhead",
        "gridX": 179,
        "gridY": 111,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/179,111/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Marblemount"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/106,139/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5271,-118.7657",
        "gridId": "OTX",
        "latitude": 48.5270659983037,
        "longitude": -118.765747998947,
        "metadata-url": "https://api.weather.gov/points/48.5271,-118.7657",
        "trailhead": "Ten Mile Trailhead",
        "gridX": 106,
        "gridY": 139,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/106,139/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC019",
        "radarStation": "KOTX",
        "city": "Republic"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/33,104/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5278,-120.821",
        "gridId": "OTX",
        "latitude": 47.5277999987773,
        "longitude": -120.821000000857,
        "metadata-url": "https://api.weather.gov/points/47.5278,-120.821",
        "trailhead": "Stuart Lake Trailhead",
        "gridX": 33,
        "gridY": 104,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/33,104/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      },
      {
        "id": "https://api.weather.gov/points/47.536,-120.814",
        "gridId": "OTX",
        "latitude": 47.5359999983677,
        "longitude": -120.814000000361,
        "metadata-url": "https://api.weather.gov/points/47.536,-120.814",
        "trailhead": "Eightmile Trailhead",
        "gridX": 33,
        "gridY": 104,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/33,104/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/26,116/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7479,-121.0882",
        "gridId": "OTX",
        "latitude": 47.7479389990776,
        "longitude": -121.088206000135,
        "metadata-url": "https://api.weather.gov/points/47.7479,-121.0882",
        "trailhead": "Pacific Crest - Stevens North Trailhead",
        "gridX": 26,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/26,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/76,101/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.076,-124.0131",
        "gridId": "SEW",
        "latitude": 48.0759549983681,
        "longitude": -124.013095999543,
        "metadata-url": "https://api.weather.gov/points/48.076,-124.0131",
        "trailhead": "Mt. Muller Trailhead - Highway 101",
        "gridX": 76,
        "gridY": 101,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/76,101/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Clallam Bay"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/129,65/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5542,-122.1666",
        "gridId": "SEW",
        "latitude": 47.5541943670775,
        "longitude": -122.166585145426,
        "metadata-url": "https://api.weather.gov/points/47.5542,-122.1666",
        "trailhead": "Coal Creek Trail",
        "gridX": 129,
        "gridY": 65,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/129,65/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ556",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Newcastle"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/131,116/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6086,-122.4334",
        "gridId": "SEW",
        "latitude": 48.6085943429969,
        "longitude": -122.433384841306,
        "metadata-url": "https://api.weather.gov/points/48.6086,-122.4334",
        "trailhead": "Oyster Dome",
        "gridX": 131,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/131,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ506",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "Edison"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/82,187/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.2982,-120.761",
        "gridId": "PDT",
        "latitude": 47.2981999989345,
        "longitude": -120.760999999661,
        "metadata-url": "https://api.weather.gov/points/47.2982,-120.761",
        "trailhead": "Red Top  Trailhead",
        "gridX": 82,
        "gridY": 187,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/82,187/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Cle Elum"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/154,62/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6087,-121.3857",
        "gridId": "SEW",
        "latitude": 47.608721998704,
        "longitude": -121.385742000118,
        "metadata-url": "https://api.weather.gov/points/47.6087,-121.3857",
        "trailhead": "Dorothy Lake Trailhead",
        "gridX": 154,
        "gridY": 62,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/154,62/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/149,136/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.3332,-121.7936",
        "gridId": "PQR",
        "latitude": 46.333194395078,
        "longitude": -121.793585484957,
        "metadata-url": "https://api.weather.gov/points/46.3332,-121.7936",
        "trailhead": "McCoy Peak",
        "gridX": 149,
        "gridY": 136,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/149,136/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/99,73/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5998,-123.1508",
        "gridId": "SEW",
        "latitude": 47.5998439986668,
        "longitude": -123.150823000262,
        "metadata-url": "https://api.weather.gov/points/47.5998,-123.1508",
        "trailhead": "Lena Lake/Brothers Trailhead",
        "gridX": 99,
        "gridY": 73,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/99,73/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KATX",
        "city": "Brinnon"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/141,124/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0611,-121.971",
        "gridId": "PQR",
        "latitude": 46.0610799987127,
        "longitude": -121.970990000533,
        "metadata-url": "https://api.weather.gov/points/46.0611,-121.971",
        "trailhead": "Trailhead: Curly Creek Falls",
        "gridX": 141,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/141,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/70,154/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7,-119.9532",
        "gridId": "OTX",
        "latitude": 48.6999940595458,
        "longitude": -119.953185235999,
        "metadata-url": "https://api.weather.gov/points/48.7,-119.9532",
        "trailhead": "Tiffany Lake",
        "gridX": 70,
        "gridY": 154,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/70,154/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Conconully"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/157,141/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7501,-117.2016",
        "gridId": "OTX",
        "latitude": 48.7501479983426,
        "longitude": -117.201632000077,
        "metadata-url": "https://api.weather.gov/points/48.7501,-117.2016",
        "trailhead": "North Fork Harvey Creek Trailhead",
        "gridX": 157,
        "gridY": 141,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/157,141/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC051",
        "radarStation": "KOTX",
        "city": "Ione"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/31,116/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7707,-120.927",
        "gridId": "OTX",
        "latitude": 47.7706999986831,
        "longitude": -120.927000000126,
        "metadata-url": "https://api.weather.gov/points/47.7707,-120.927",
        "trailhead": "White Pine Trailhead",
        "gridX": 31,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/31,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/67,174/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.9694999,-121.168",
        "gridId": "PDT",
        "latitude": 46.9694999996716,
        "longitude": -121.168000000062,
        "metadata-url": "https://api.weather.gov/points/46.9695,-121.168",
        "trailhead": "American Ridge Trailhead",
        "gridX": 67,
        "gridY": 174,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/67,174/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KATX",
        "city": "Cliffdell"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/157,63/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6348,-121.3037",
        "gridId": "SEW",
        "latitude": 47.6348019990672,
        "longitude": -121.303704000038,
        "metadata-url": "https://api.weather.gov/points/47.6348,-121.3037",
        "trailhead": "West Fork Foss Lakes Trailhead",
        "gridX": 157,
        "gridY": 63,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/157,63/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/81,100/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0659,-123.8594",
        "gridId": "SEW",
        "latitude": 48.0658595434833,
        "longitude": -123.859404438315,
        "metadata-url": "https://api.weather.gov/points/48.0659,-123.8594",
        "trailhead": "Pyramid Peak",
        "gridX": 81,
        "gridY": 100,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/81,100/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/140,10/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.4644,-121.5178",
        "gridId": "SEW",
        "latitude": 46.4643529986137,
        "longitude": -121.517822000086,
        "metadata-url": "https://api.weather.gov/points/46.4644,-121.5178",
        "trailhead": "Trailhead: Snowgrass for hikers",
        "gridX": 140,
        "gridY": 10,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/140,10/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/170,117/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1762,-117.7194",
        "gridId": "PDT",
        "latitude": 46.1761649986574,
        "longitude": -117.719378999387,
        "metadata-url": "https://api.weather.gov/points/46.1762,-117.7194",
        "trailhead": "Panjab Trailhead",
        "gridX": 170,
        "gridY": 117,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/170,117/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ030",
        "county": "https://api.weather.gov/zones/county/WAC013",
        "radarStation": "KPDT",
        "city": "Dayton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/130,118/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6488,-122.4888",
        "gridId": "SEW",
        "latitude": 48.6487943470502,
        "longitude": -122.488784822339,
        "metadata-url": "https://api.weather.gov/points/48.6488,-122.4888",
        "trailhead": "Double Diamond Trail",
        "gridX": 130,
        "gridY": 118,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/130,118/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ503",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Edison"
      },
      {
        "id": "https://api.weather.gov/points/48.6534,-122.4902",
        "gridId": "SEW",
        "latitude": 48.6533943473339,
        "longitude": -122.490184820951,
        "metadata-url": "https://api.weather.gov/points/48.6534,-122.4902",
        "trailhead": "Fragrance Lake",
        "gridX": 130,
        "gridY": 118,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/130,118/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ503",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Bellingham"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/52,129/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.9654,-121.342",
        "gridId": "PDT",
        "latitude": 45.9653943703376,
        "longitude": -121.341985636906,
        "metadata-url": "https://api.weather.gov/points/45.9654,-121.342",
        "trailhead": "Willard Springs Trail",
        "gridX": 52,
        "gridY": 129,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/52,129/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC039",
        "radarStation": "KRTX",
        "city": "Glenwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/94,91/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9458,-123.4254",
        "gridId": "SEW",
        "latitude": 47.9458089166361,
        "longitude": -123.425423446146,
        "metadata-url": "https://api.weather.gov/points/47.9458,-123.4254",
        "trailhead": "PJ Lake",
        "gridX": 94,
        "gridY": 91,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/94,91/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles East"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/83,100/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0933,-123.8025",
        "gridId": "SEW",
        "latitude": 48.093294521523,
        "longitude": -123.802484757203,
        "metadata-url": "https://api.weather.gov/points/48.0933,-123.8025",
        "trailhead": "Spruce Railroad Trail",
        "gridX": 83,
        "gridY": 100,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/83,100/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/89,188/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3354,-120.579",
        "gridId": "PDT",
        "latitude": 47.3353942076256,
        "longitude": -120.578985459088,
        "metadata-url": "https://api.weather.gov/points/47.3354,-120.579",
        "trailhead": "Swauk Forest Discovery Trail",
        "gridX": 89,
        "gridY": 188,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/89,188/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Wenatchee"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/92,97/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0572,-123.5013",
        "gridId": "SEW",
        "latitude": 48.0572394467303,
        "longitude": -123.501294267906,
        "metadata-url": "https://api.weather.gov/points/48.0572,-123.5013",
        "trailhead": "Little River (Shore Ranch)",
        "gridX": 92,
        "gridY": 97,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/92,97/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/42,117/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8408,-120.6041",
        "gridId": "OTX",
        "latitude": 47.8407999989068,
        "longitude": -120.604107999457,
        "metadata-url": "https://api.weather.gov/points/47.8408,-120.6041",
        "trailhead": "Mad River Trailhead - Upper",
        "gridX": 42,
        "gridY": 117,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/42,117/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/39,93/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3279,-120.5517",
        "gridId": "OTX",
        "latitude": 47.3279379991541,
        "longitude": -120.551689000752,
        "metadata-url": "https://api.weather.gov/points/47.3279,-120.5517",
        "trailhead": "Tronsen Ridge ORV Trailhead",
        "gridX": 39,
        "gridY": 93,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/39,93/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Wenatchee"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/79,101/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0901,-123.9324",
        "gridId": "SEW",
        "latitude": 48.0901299990833,
        "longitude": -123.932370000341,
        "metadata-url": "https://api.weather.gov/points/48.0901,-123.9324",
        "trailhead": "Pyramid Peak Trailhead",
        "gridX": 79,
        "gridY": 101,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/79,101/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Clallam Bay"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/148,121/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0345,-121.7159",
        "gridId": "PQR",
        "latitude": 46.0344756955031,
        "longitude": -121.715896096268,
        "metadata-url": "https://api.weather.gov/points/46.0345,-121.7159",
        "trailhead": "Trailhead: Filloon",
        "gridX": 148,
        "gridY": 121,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/148,121/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/56,107/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.11,-124.6634",
        "gridId": "SEW",
        "latitude": 48.1100020374147,
        "longitude": -124.66336845242,
        "metadata-url": "https://api.weather.gov/points/48.11,-124.6634",
        "trailhead": "Erickson's Bay",
        "gridX": 56,
        "gridY": 107,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/56,107/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ516",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Forks"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/120,120/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6569,-122.818",
        "gridId": "SEW",
        "latitude": 48.6568943842205,
        "longitude": -122.81798476662,
        "metadata-url": "https://api.weather.gov/points/48.6569,-122.818",
        "trailhead": "Mount Constitution and Mountain Lake",
        "gridX": 120,
        "gridY": 120,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/120,120/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ001",
        "county": "https://api.weather.gov/zones/county/WAC055",
        "radarStation": "KATX",
        "city": "Friday Harbor"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/44,150/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5162,-120.736",
        "gridId": "OTX",
        "latitude": 48.5162499993322,
        "longitude": -120.736040000234,
        "metadata-url": "https://api.weather.gov/points/48.5162,-120.736",
        "trailhead": "Rainy Pass Trailhead",
        "gridX": 44,
        "gridY": 150,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/44,150/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/80,95/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.97,-123.8627",
        "gridId": "SEW",
        "latitude": 47.9699945342538,
        "longitude": -123.86268477852,
        "metadata-url": "https://api.weather.gov/points/47.97,-123.8627",
        "trailhead": "Sol Duc Falls",
        "gridX": 80,
        "gridY": 95,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/80,95/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Port Angeles"
      },
      {
        "id": "https://api.weather.gov/points/47.9704,-123.8651",
        "gridId": "SEW",
        "latitude": 47.9703776316405,
        "longitude": -123.865073573824,
        "metadata-url": "https://api.weather.gov/points/47.9704,-123.8651",
        "trailhead": "Mink Lake/Lover's Lane Trail",
        "gridX": 80,
        "gridY": 95,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/80,95/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/117,100/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.2226,-122.764",
        "gridId": "SEW",
        "latitude": 48.2225943987454,
        "longitude": -122.763984886283,
        "metadata-url": "https://api.weather.gov/points/48.2226,-122.764",
        "trailhead": "Fort Ebey State Park",
        "gridX": 117,
        "gridY": 100,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/117,100/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ510",
        "county": "https://api.weather.gov/zones/county/WAC029",
        "radarStation": "KATX",
        "city": "Coupeville"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/154,124/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1214,-121.5608",
        "gridId": "PQR",
        "latitude": 46.1213999989477,
        "longitude": -121.560799999219,
        "metadata-url": "https://api.weather.gov/points/46.1214,-121.5608",
        "trailhead": "Trailhead: Crofton Ridge West",
        "gridX": 154,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/154,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/151,58/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5172,-121.454",
        "gridId": "SEW",
        "latitude": 47.5172039996701,
        "longitude": -121.454033999449,
        "metadata-url": "https://api.weather.gov/points/47.5172,-121.454",
        "trailhead": "Dutch Miller Gap Trailhead",
        "gridX": 151,
        "gridY": 58,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/151,58/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/144,36/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.0358,-121.5602",
        "gridId": "SEW",
        "latitude": 47.0357519992252,
        "longitude": -121.560159000706,
        "metadata-url": "https://api.weather.gov/points/47.0358,-121.5602",
        "trailhead": "Camp Sheppard Trailhead",
        "gridX": 144,
        "gridY": 36,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/144,36/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/160,149/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.9172,-117.1389",
        "gridId": "OTX",
        "latitude": 48.9172219986438,
        "longitude": -117.138888999555,
        "metadata-url": "https://api.weather.gov/points/48.9172,-117.1389",
        "trailhead": "Bear Pasture Trailhead",
        "gridX": 160,
        "gridY": 149,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/160,149/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC051",
        "radarStation": "KOTX",
        "city": "Metaline Falls"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/31,108/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6086,-120.882",
        "gridId": "OTX",
        "latitude": 47.6085942244897,
        "longitude": -120.881985344577,
        "metadata-url": "https://api.weather.gov/points/47.6086,-120.882",
        "trailhead": "Lake Edna",
        "gridX": 31,
        "gridY": 108,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/31,108/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      },
      {
        "id": "https://api.weather.gov/points/47.6078,-120.895",
        "gridId": "OTX",
        "latitude": 47.6077999982932,
        "longitude": -120.895000000475,
        "metadata-url": "https://api.weather.gov/points/47.6078,-120.895",
        "trailhead": "Icicle Gorge Trailhead",
        "gridX": 31,
        "gridY": 108,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/31,108/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      },
      {
        "id": "https://api.weather.gov/points/47.6098,-120.892",
        "gridId": "OTX",
        "latitude": 47.6097999991768,
        "longitude": -120.892000000339,
        "metadata-url": "https://api.weather.gov/points/47.6098,-120.892",
        "trailhead": "Chatter Creek Trailhead",
        "gridX": 31,
        "gridY": 108,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/31,108/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/144,119/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.9681,-121.8452",
        "gridId": "PQR",
        "latitude": 45.9680759985499,
        "longitude": -121.845245999825,
        "metadata-url": "https://api.weather.gov/points/45.9681,-121.8452",
        "trailhead": "Trailhead: McClellan Meadows-Lower",
        "gridX": 144,
        "gridY": 119,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/144,119/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      },
      {
        "id": "https://api.weather.gov/points/45.9681,-121.8452",
        "gridId": "PQR",
        "latitude": 45.9680759985499,
        "longitude": -121.845245999825,
        "metadata-url": "https://api.weather.gov/points/45.9681,-121.8452",
        "trailhead": "Trailhead: McClellan Meadows-Upper",
        "gridX": 144,
        "gridY": 119,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/144,119/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/139,60/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5092,-121.8434",
        "gridId": "SEW",
        "latitude": 47.5091943343996,
        "longitude": -121.84338520897,
        "metadata-url": "https://api.weather.gov/points/47.5092,-121.8434",
        "trailhead": "Rattlesnake Mountain",
        "gridX": 139,
        "gridY": 60,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/139,60/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Snoqualmie"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/60,159/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.6278,-121.288",
        "gridId": "PDT",
        "latitude": 46.6277999989099,
        "longitude": -121.288001999577,
        "metadata-url": "https://api.weather.gov/points/46.6278,-121.288",
        "trailhead": "Clear Lake Day Use Area",
        "gridX": 60,
        "gridY": 159,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/60,159/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/103,90/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9671,-123.1275",
        "gridId": "SEW",
        "latitude": 47.9671099993805,
        "longitude": -123.1274830003,
        "metadata-url": "https://api.weather.gov/points/47.9671,-123.1275",
        "trailhead": "Gray Wolf Trailhead",
        "gridX": 103,
        "gridY": 90,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/103,90/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Bell Hill"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/143,37/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.0409999,-121.5965",
        "gridId": "SEW",
        "latitude": 47.0410049989902,
        "longitude": -121.596539000311,
        "metadata-url": "https://api.weather.gov/points/47.041,-121.5965",
        "trailhead": "Sun Top Lookout",
        "gridX": 143,
        "gridY": 37,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/143,37/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/148,138/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.3817,-121.8304",
        "gridId": "PQR",
        "latitude": 46.3816943964721,
        "longitude": -121.830385468025,
        "metadata-url": "https://api.weather.gov/points/46.3817,-121.8304",
        "trailhead": "Langille Peak",
        "gridX": 148,
        "gridY": 138,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/148,138/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/40,93/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3337999,-120.5267",
        "gridId": "OTX",
        "latitude": 47.3338199985245,
        "longitude": -120.526733001035,
        "metadata-url": "https://api.weather.gov/points/47.3338,-120.5267",
        "trailhead": "Upper Tronsen Ridge ORV Trailhead",
        "gridX": 40,
        "gridY": 93,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/40,93/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Wenatchee"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/150,53/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3928,-121.4742",
        "gridId": "SEW",
        "latitude": 47.392825999511,
        "longitude": -121.474155999978,
        "metadata-url": "https://api.weather.gov/points/47.3928,-121.4742",
        "trailhead": "Annette Lake Trailhead",
        "gridX": 150,
        "gridY": 53,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/150,53/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/122,93/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.1113,-122.5756",
        "gridId": "SEW",
        "latitude": 48.1112943831549,
        "longitude": -122.57558494432,
        "metadata-url": "https://api.weather.gov/points/48.1113,-122.5756",
        "trailhead": "Greenbank Farm",
        "gridX": 122,
        "gridY": 93,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/122,93/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ510",
        "county": "https://api.weather.gov/zones/county/WAC029",
        "radarStation": "KATX",
        "city": "Freeland"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/132,10/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.4323,-121.7626",
        "gridId": "SEW",
        "latitude": 46.432294386612,
        "longitude": -121.76258546843,
        "metadata-url": "https://api.weather.gov/points/46.4323,-121.7626",
        "trailhead": "Bishop Ridge",
        "gridX": 132,
        "gridY": 10,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/132,10/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/128,67/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.589,-122.227",
        "gridId": "SEW",
        "latitude": 47.5889943719085,
        "longitude": -122.226985127185,
        "metadata-url": "https://api.weather.gov/points/47.589,-122.227",
        "trailhead": "Luther Burbank Park",
        "gridX": 128,
        "gridY": 67,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/128,67/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ558",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Beaux Arts Village"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/38,124/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9523,-120.773",
        "gridId": "OTX",
        "latitude": 47.9522999988724,
        "longitude": -120.772999999535,
        "metadata-url": "https://api.weather.gov/points/47.9523,-120.773",
        "trailhead": "Schaefer Lake Trailhead",
        "gridX": 38,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/38,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      },
      {
        "id": "https://api.weather.gov/points/47.951,-120.769",
        "gridId": "OTX",
        "latitude": 47.9509999995765,
        "longitude": -120.769000000663,
        "metadata-url": "https://api.weather.gov/points/47.951,-120.769",
        "trailhead": "Basalt Pass Trailhead",
        "gridX": 38,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/38,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      },
      {
        "id": "https://api.weather.gov/points/47.951,-120.769",
        "gridId": "OTX",
        "latitude": 47.9509999995765,
        "longitude": -120.769000000663,
        "metadata-url": "https://api.weather.gov/points/47.951,-120.769",
        "trailhead": "Basalt Ridge Trailhead",
        "gridX": 38,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/38,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/164,67/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7472,-121.1272",
        "gridId": "SEW",
        "latitude": 47.7471939992312,
        "longitude": -121.127167000698,
        "metadata-url": "https://api.weather.gov/points/47.7472,-121.1272",
        "trailhead": "Wellington Trailhead",
        "gridX": 164,
        "gridY": 67,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/164,67/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/118,121/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6562,-122.8555",
        "gridId": "SEW",
        "latitude": 48.6561943886268,
        "longitude": -122.85548476104,
        "metadata-url": "https://api.weather.gov/points/48.6562,-122.8555",
        "trailhead": "Cascade Lake",
        "gridX": 118,
        "gridY": 121,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/118,121/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ001",
        "county": "https://api.weather.gov/zones/county/WAC055",
        "radarStation": "KATX",
        "city": "Friday Harbor"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/147,122/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0476,-121.7565",
        "gridId": "PQR",
        "latitude": 46.0475599988276,
        "longitude": -121.756450000335,
        "metadata-url": "https://api.weather.gov/points/46.0476,-121.7565",
        "trailhead": "Trailhead: Cultus Creek",
        "gridX": 147,
        "gridY": 122,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/147,122/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/172,101/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4754,-121.0751",
        "gridId": "SEW",
        "latitude": 48.4753941975186,
        "longitude": -121.075085099715,
        "metadata-url": "https://api.weather.gov/points/48.4754,-121.0751",
        "trailhead": "Cascade Pass",
        "gridX": 172,
        "gridY": 101,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/172,101/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "Marblemount"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/77,157/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.6593,-120.7556",
        "gridId": "PDT",
        "latitude": 46.6592942671907,
        "longitude": -120.755585583006,
        "metadata-url": "https://api.weather.gov/points/46.6593,-120.7556",
        "trailhead": "Snow Mountain Ranch",
        "gridX": 77,
        "gridY": 157,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/77,157/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KPDT",
        "city": "Cowiche"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/107,86/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8927,-122.9866",
        "gridId": "SEW",
        "latitude": 47.8927269989223,
        "longitude": -122.986610000113,
        "metadata-url": "https://api.weather.gov/points/47.8927,-122.9866",
        "trailhead": "Dead Fall Trailhead",
        "gridX": 107,
        "gridY": 86,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/107,86/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Quilcene"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/50,148/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.3509,-121.5168",
        "gridId": "PDT",
        "latitude": 46.3508899993908,
        "longitude": -121.51676599932,
        "metadata-url": "https://api.weather.gov/points/46.3509,-121.5168",
        "trailhead": "Trailhead: Midway Pacific Crest",
        "gridX": 50,
        "gridY": 148,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/50,148/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/46,98/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.462,-120.3827",
        "gridId": "OTX",
        "latitude": 47.4619941783814,
        "longitude": -120.382685462956,
        "metadata-url": "https://api.weather.gov/points/47.462,-120.3827",
        "trailhead": "Horse Lake Reserve",
        "gridX": 46,
        "gridY": 98,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/46,98/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ041",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Sunnyslope"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/106,80/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7836,-122.9656",
        "gridId": "SEW",
        "latitude": 47.7836109989582,
        "longitude": -122.965555999009,
        "metadata-url": "https://api.weather.gov/points/47.7836,-122.9656",
        "trailhead": "Lower Big Quilcene Trailhead",
        "gridX": 106,
        "gridY": 80,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/106,80/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Quilcene"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/104,81/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7814,-123.0523",
        "gridId": "SEW",
        "latitude": 47.7814169992604,
        "longitude": -123.05225000023,
        "metadata-url": "https://api.weather.gov/points/47.7814,-123.0523",
        "trailhead": "Tunnel Creek via Big Quilcene Road Trailhead",
        "gridX": 104,
        "gridY": 81,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/104,81/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Quilcene"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/102,62/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3774,-122.9738",
        "gridId": "SEW",
        "latitude": 47.377394464295,
        "longitude": -122.973785058868,
        "metadata-url": "https://api.weather.gov/points/47.3774,-122.9738",
        "trailhead": "Twanoh State Park",
        "gridX": 102,
        "gridY": 62,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/102,62/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ511",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Union"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/126,12/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.4617999,-121.9581",
        "gridId": "SEW",
        "latitude": 46.4618139987974,
        "longitude": -121.958109000139,
        "metadata-url": "https://api.weather.gov/points/46.4618,-121.9581",
        "trailhead": "Interpretive Site: Woods Creek Watchable Wildlife",
        "gridX": 126,
        "gridY": 12,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/126,12/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Morton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/146,35/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.0127,-121.4654",
        "gridId": "SEW",
        "latitude": 47.0127279991436,
        "longitude": -121.465402000086,
        "metadata-url": "https://api.weather.gov/points/47.0127,-121.4654",
        "trailhead": "Corral Pass Trailhead",
        "gridX": 146,
        "gridY": 35,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/146,35/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/76,88/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7981,-123.9529",
        "gridId": "SEW",
        "latitude": 47.7981265658272,
        "longitude": -123.952901036546,
        "metadata-url": "https://api.weather.gov/points/47.7981,-123.9529",
        "trailhead": "South Fork Hoh",
        "gridX": 76,
        "gridY": 88,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/76,88/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KLGX",
        "city": "Forks"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/47,113/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7589,-120.4265",
        "gridId": "OTX",
        "latitude": 47.7589459989712,
        "longitude": -120.426522999817,
        "metadata-url": "https://api.weather.gov/points/47.7589,-120.4265",
        "trailhead": "Mad River Trailhead - Lower",
        "gridX": 47,
        "gridY": 113,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/47,113/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Entiat"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/70,96/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.938,-124.1678",
        "gridId": "SEW",
        "latitude": 47.9379845346894,
        "longitude": -124.167804321503,
        "metadata-url": "https://api.weather.gov/points/47.938,-124.1678",
        "trailhead": "Rugged Ridge North Snider-Jackson Trail",
        "gridX": 70,
        "gridY": 96,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/70,96/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Forks"
      },
      {
        "id": "https://api.weather.gov/points/47.9379,-124.1655",
        "gridId": "SEW",
        "latitude": 47.9378809991417,
        "longitude": -124.165519999564,
        "metadata-url": "https://api.weather.gov/points/47.9379,-124.1655",
        "trailhead": "Snider Jackson South Trailhead",
        "gridX": 70,
        "gridY": 96,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/70,96/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Forks"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/165,106/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5522,-121.3294",
        "gridId": "SEW",
        "latitude": 48.5522089987665,
        "longitude": -121.329371000644,
        "metadata-url": "https://api.weather.gov/points/48.5522,-121.3294",
        "trailhead": "Lookout Mountain Lookout",
        "gridX": 165,
        "gridY": 106,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/165,106/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "Marblemount"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/132,63/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5269,-122.0641",
        "gridId": "SEW",
        "latitude": 47.5268943576862,
        "longitude": -122.064085167904,
        "metadata-url": "https://api.weather.gov/points/47.5269,-122.0641",
        "trailhead": "Bear Ridge",
        "gridX": 132,
        "gridY": 63,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/132,63/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ556",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Issaquah"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/71,192/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3507,-121.1364",
        "gridId": "PDT",
        "latitude": 47.3506942666153,
        "longitude": -121.136385362808,
        "metadata-url": "https://api.weather.gov/points/47.3507,-121.1364",
        "trailhead": "French Cabin Mountain",
        "gridX": 71,
        "gridY": 192,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/71,192/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Roslyn"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/97,155/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.8129,-119.1236",
        "gridId": "OTX",
        "latitude": 48.8128509989327,
        "longitude": -119.123565000045,
        "metadata-url": "https://api.weather.gov/points/48.8129,-119.1236",
        "trailhead": "Bonaparte Mountain Trailhead",
        "gridX": 97,
        "gridY": 155,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/97,155/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KOTX",
        "city": "Tonasket"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/145,134/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2951,-121.8889",
        "gridId": "PQR",
        "latitude": 46.2950944075852,
        "longitude": -121.88888547767,
        "metadata-url": "https://api.weather.gov/points/46.2951,-121.8889",
        "trailhead": "Badger Peak",
        "gridX": 145,
        "gridY": 134,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/145,134/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/154,126/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.9095,-121.8017",
        "gridId": "SEW",
        "latitude": 48.9095259990365,
        "longitude": -121.801665000469,
        "metadata-url": "https://api.weather.gov/points/48.9095,-121.8017",
        "trailhead": "Excelsior Pass Trailhead",
        "gridX": 154,
        "gridY": 126,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/154,126/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/76,163/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.9071,-119.8274",
        "gridId": "OTX",
        "latitude": 48.9071229991489,
        "longitude": -119.827427999902,
        "metadata-url": "https://api.weather.gov/points/48.9071,-119.8274",
        "trailhead": "Fourteen Mile Trailhead",
        "gridX": 76,
        "gridY": 163,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/76,163/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Loomis"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/157,114/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6746,-121.6145",
        "gridId": "SEW",
        "latitude": 48.6746139993473,
        "longitude": -121.614528000485,
        "metadata-url": "https://api.weather.gov/points/48.6746,-121.6145",
        "trailhead": "Watson Lakes Trailhead",
        "gridX": 157,
        "gridY": 114,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/157,114/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Concrete"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/132,55/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3614,-122.0248",
        "gridId": "SEW",
        "latitude": 47.361394361684,
        "longitude": -122.024785213999,
        "metadata-url": "https://api.weather.gov/points/47.3614,-122.0248",
        "trailhead": "Green to Cedar River Trail",
        "gridX": 132,
        "gridY": 55,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/132,55/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Maple Valley"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/124,110/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4540999,-122.626",
        "gridId": "SEW",
        "latitude": 48.4540943718687,
        "longitude": -122.625984850207,
        "metadata-url": "https://api.weather.gov/points/48.4541,-122.626",
        "trailhead": "Mount Erie",
        "gridX": 124,
        "gridY": 110,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/124,110/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ506",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "Anacortes"
      },
      {
        "id": "https://api.weather.gov/points/48.4673,-122.6301",
        "gridId": "SEW",
        "latitude": 48.4672943719583,
        "longitude": -122.630084845136,
        "metadata-url": "https://api.weather.gov/points/48.4673,-122.6301",
        "trailhead": "Sugarloaf",
        "gridX": 124,
        "gridY": 110,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/124,110/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ506",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "Anacortes"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/142,128/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1403,-121.9388",
        "gridId": "PQR",
        "latitude": 46.1402919986058,
        "longitude": -121.938763999991,
        "metadata-url": "https://api.weather.gov/points/46.1403,-121.9388",
        "trailhead": "Trailhead: Spencer Butte",
        "gridX": 142,
        "gridY": 128,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/142,128/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/99,90/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.949,-123.2582",
        "gridId": "SEW",
        "latitude": 47.948979486134,
        "longitude": -123.258214359501,
        "metadata-url": "https://api.weather.gov/points/47.949,-123.2582",
        "trailhead": "Deer Park",
        "gridX": 99,
        "gridY": 90,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/99,90/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "River Road"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/141,136/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.3138,-122.0351",
        "gridId": "PQR",
        "latitude": 46.3138399988809,
        "longitude": -122.035053999388,
        "metadata-url": "https://api.weather.gov/points/46.3138,-122.0351",
        "trailhead": "Bear Meadow Interpretive Site",
        "gridX": 141,
        "gridY": 136,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/141,136/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Morton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/95,98/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0998,-123.4344",
        "gridId": "SEW",
        "latitude": 48.0997944802277,
        "longitude": -123.43438481195,
        "metadata-url": "https://api.weather.gov/points/48.0998,-123.4344",
        "trailhead": "Peabody Creek Loop Trail",
        "gridX": 95,
        "gridY": 98,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/95,98/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ514",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/87,188/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3311,-120.6112",
        "gridId": "PDT",
        "latitude": 47.3310942107073,
        "longitude": -120.611185455624,
        "metadata-url": "https://api.weather.gov/points/47.3311,-120.6112",
        "trailhead": "Pipe Creek Loop Snowshoe",
        "gridX": 87,
        "gridY": 188,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/87,188/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Cashmere"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/167,110/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0168,-117.7867",
        "gridId": "PDT",
        "latitude": 46.0168259984068,
        "longitude": -117.786747000965,
        "metadata-url": "https://api.weather.gov/points/46.0168,-117.7867",
        "trailhead": "Slick Ear Trailhead",
        "gridX": 167,
        "gridY": 110,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/167,110/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ030",
        "county": "https://api.weather.gov/zones/county/WAC013",
        "radarStation": "KPDT",
        "city": "Dixie"
      },
      {
        "id": "https://api.weather.gov/points/46.0276,-117.7717",
        "gridId": "PDT",
        "latitude": 46.0276079994285,
        "longitude": -117.771711999092,
        "metadata-url": "https://api.weather.gov/points/46.0276,-117.7717",
        "trailhead": "Twin Buttes Trailhead",
        "gridX": 167,
        "gridY": 110,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/167,110/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ030",
        "county": "https://api.weather.gov/zones/county/WAC013",
        "radarStation": "KPDT",
        "city": "Dixie"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/37,128/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0266,-120.829",
        "gridId": "OTX",
        "latitude": 48.0265999992002,
        "longitude": -120.829000000705,
        "metadata-url": "https://api.weather.gov/points/48.0266,-120.829",
        "trailhead": "Little Giant Trailhead",
        "gridX": 37,
        "gridY": 128,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/37,128/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/108,82/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8219,-122.938",
        "gridId": "SEW",
        "latitude": 47.8219369989306,
        "longitude": -122.938039999444,
        "metadata-url": "https://api.weather.gov/points/47.8219,-122.938",
        "trailhead": "Notch Pass Trailhead",
        "gridX": 108,
        "gridY": 82,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/108,82/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ511",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Quilcene"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/28,122/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8801,-121.079",
        "gridId": "OTX",
        "latitude": 47.8800999984918,
        "longitude": -121.079000000547,
        "metadata-url": "https://api.weather.gov/points/47.8801,-121.079",
        "trailhead": "Top Lake Trailhead",
        "gridX": 28,
        "gridY": 122,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/28,122/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/160,70/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7966,-121.2625",
        "gridId": "SEW",
        "latitude": 47.7965589986222,
        "longitude": -121.262530000096,
        "metadata-url": "https://api.weather.gov/points/47.7966,-121.2625",
        "trailhead": "Johnson Ridge Trailhead",
        "gridX": 160,
        "gridY": 70,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/160,70/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/76,148/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2856,-124.0633",
        "gridId": "PQR",
        "latitude": 46.2855946378569,
        "longitude": -124.06328514249,
        "metadata-url": "https://api.weather.gov/points/46.2856,-124.0633",
        "trailhead": "Cape Disappointment State Park",
        "gridX": 76,
        "gridY": 148,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/76,148/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ021",
        "county": "https://api.weather.gov/zones/county/WAC049",
        "radarStation": "KLGX",
        "city": "Ilwaco"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/46,150/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5191,-120.674",
        "gridId": "OTX",
        "latitude": 48.519139998586,
        "longitude": -120.67404999974,
        "metadata-url": "https://api.weather.gov/points/48.5191,-120.674",
        "trailhead": "Blue Lake Trailhead",
        "gridX": 46,
        "gridY": 150,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/46,150/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/95,143/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2565,-123.4364",
        "gridId": "PQR",
        "latitude": 46.2564945721687,
        "longitude": -123.436385244046,
        "metadata-url": "https://api.weather.gov/points/46.2565,-123.4364",
        "trailhead": "Julia Butler Hansen National Wildlife Refuge",
        "gridX": 95,
        "gridY": 143,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/95,143/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ021",
        "county": "https://api.weather.gov/zones/county/WAC069",
        "radarStation": "KRTX",
        "city": "Lower Elochoman"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/30,119/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.821,-120.9963",
        "gridId": "OTX",
        "latitude": 47.8210369985045,
        "longitude": -120.996307000173,
        "metadata-url": "https://api.weather.gov/points/47.821,-120.9963",
        "trailhead": "Snowy Creek Trailhead",
        "gridX": 30,
        "gridY": 119,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/30,119/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/187,111/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7323,-120.6682",
        "gridId": "SEW",
        "latitude": 48.7322941374621,
        "longitude": -120.668185102892,
        "metadata-url": "https://api.weather.gov/points/48.7323,-120.6682",
        "trailhead": "Silver Lake",
        "gridX": 187,
        "gridY": 111,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/187,111/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Winthrop"
      },
      {
        "id": "https://api.weather.gov/points/48.7321,-120.6751",
        "gridId": "SEW",
        "latitude": 48.7320941388501,
        "longitude": -120.675085102757,
        "metadata-url": "https://api.weather.gov/points/48.7321,-120.6751",
        "trailhead": "Windy Pass",
        "gridX": 187,
        "gridY": 111,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/187,111/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Winthrop"
      },
      {
        "id": "https://api.weather.gov/points/48.7378,-120.6785",
        "gridId": "SEW",
        "latitude": 48.7378329992796,
        "longitude": -120.678500000405,
        "metadata-url": "https://api.weather.gov/points/48.7378,-120.6785",
        "trailhead": "Slate Peak Trailhead",
        "gridX": 187,
        "gridY": 111,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/187,111/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/134,136/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.286,-122.2523",
        "gridId": "PQR",
        "latitude": 46.2859969993241,
        "longitude": -122.252287999106,
        "metadata-url": "https://api.weather.gov/points/46.286,-122.2523",
        "trailhead": "South Coldwater Trailhead",
        "gridX": 134,
        "gridY": 136,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/134,136/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC015",
        "radarStation": "KRTX",
        "city": "Morton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/151,85/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.069,-121.6437",
        "gridId": "SEW",
        "latitude": 48.0690279993985,
        "longitude": -121.643697000042,
        "metadata-url": "https://api.weather.gov/points/48.069,-121.6437",
        "trailhead": "Youth-On-Age Nature Trailhead",
        "gridX": 151,
        "gridY": 85,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/151,85/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Verlot"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/123,141/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6242,-118.2398",
        "gridId": "OTX",
        "latitude": 48.6241938748381,
        "longitude": -118.239785562623,
        "metadata-url": "https://api.weather.gov/points/48.6242,-118.2398",
        "trailhead": "Hoodoo Canyon",
        "gridX": 123,
        "gridY": 141,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/123,141/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC019",
        "radarStation": "KOTX",
        "city": "Barney's Junction"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/79,98/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.023,-123.9237",
        "gridId": "SEW",
        "latitude": 48.022989340242,
        "longitude": -123.923703172717,
        "metadata-url": "https://api.weather.gov/points/48.023,-123.9237",
        "trailhead": "Salmon Cascades",
        "gridX": 79,
        "gridY": 98,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/79,98/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Forks"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/57,173/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.9123,-121.4547",
        "gridId": "PDT",
        "latitude": 46.9122599299868,
        "longitude": -121.454672066935,
        "metadata-url": "https://api.weather.gov/points/46.9123,-121.4547",
        "trailhead": "Morse Creek Trailhead",
        "gridX": 57,
        "gridY": 173,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/57,173/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/107,139/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5185,-118.738",
        "gridId": "OTX",
        "latitude": 48.5184939359862,
        "longitude": -118.737985497624,
        "metadata-url": "https://api.weather.gov/points/48.5185,-118.738",
        "trailhead": "Ten Mile",
        "gridX": 107,
        "gridY": 139,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/107,139/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC019",
        "radarStation": "KOTX",
        "city": "Republic"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/144,121/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0058,-121.8392",
        "gridId": "PQR",
        "latitude": 46.0057999989654,
        "longitude": -121.839200000374,
        "metadata-url": "https://api.weather.gov/points/46.0058,-121.8392",
        "trailhead": "Trailhead: Thomas Lake",
        "gridX": 144,
        "gridY": 121,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/144,121/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/149,118/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7263,-121.9018",
        "gridId": "SEW",
        "latitude": 48.7262709986098,
        "longitude": -121.901797000092,
        "metadata-url": "https://api.weather.gov/points/48.7263,-121.9018",
        "trailhead": "Ridley Creek Trailhead",
        "gridX": 149,
        "gridY": 118,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/149,118/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/155,87/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.117,-121.5226",
        "gridId": "SEW",
        "latitude": 48.1169942661265,
        "longitude": -121.522585114426,
        "metadata-url": "https://api.weather.gov/points/48.117,-121.5226",
        "trailhead": "Independence and North Lakes",
        "gridX": 155,
        "gridY": 87,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/155,87/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      },
      {
        "id": "https://api.weather.gov/points/48.1141999,-121.5183",
        "gridId": "SEW",
        "latitude": 48.1141999989189,
        "longitude": -121.518300000051,
        "metadata-url": "https://api.weather.gov/points/48.1142,-121.5183",
        "trailhead": "Coal Lake/Independence Lake Trailhead",
        "gridX": 155,
        "gridY": 87,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/155,87/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/125,15/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0223,-117.5466",
        "gridId": "OTX",
        "latitude": 46.0223309984289,
        "longitude": -117.546582000446,
        "metadata-url": "https://api.weather.gov/points/46.0223,-117.5466",
        "trailhead": "Three Forks Trailhead",
        "gridX": 125,
        "gridY": 15,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/125,15/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ031",
        "county": "https://api.weather.gov/zones/county/WAC023",
        "radarStation": "KPDT",
        "city": "Dayton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/104,83/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8278,-123.0413",
        "gridId": "SEW",
        "latitude": 47.8278129983345,
        "longitude": -123.04132299977,
        "metadata-url": "https://api.weather.gov/points/47.8278,-123.0413",
        "trailhead": "Upper Big Quilcene Trailhead",
        "gridX": 104,
        "gridY": 83,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/104,83/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Quilcene"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/151,125/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.881,-121.8646",
        "gridId": "SEW",
        "latitude": 48.8810049990928,
        "longitude": -121.864616000265,
        "metadata-url": "https://api.weather.gov/points/48.881,-121.8646",
        "trailhead": "Skyline Divide Trailhead",
        "gridX": 151,
        "gridY": 125,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/151,125/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/103,99/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.1413,-123.1899",
        "gridId": "SEW",
        "latitude": 48.1412944510128,
        "longitude": -123.189884838928,
        "metadata-url": "https://api.weather.gov/points/48.1413,-123.1899",
        "trailhead": "Dungeness Spit",
        "gridX": 103,
        "gridY": 99,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/103,99/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ514",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Carlsborg"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/136,62/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5263,-121.9364",
        "gridId": "SEW",
        "latitude": 47.5262943438604,
        "longitude": -121.936385188905,
        "metadata-url": "https://api.weather.gov/points/47.5263,-121.9364",
        "trailhead": "Grand Ridge Park",
        "gridX": 136,
        "gridY": 62,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/136,62/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Fall City"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/149,121/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0289,-121.6851",
        "gridId": "PQR",
        "latitude": 46.028912998668,
        "longitude": -121.685056000755,
        "metadata-url": "https://api.weather.gov/points/46.0289,-121.6851",
        "trailhead": "Trailhead: Lemei",
        "gridX": 149,
        "gridY": 121,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/149,121/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      },
      {
        "id": "https://api.weather.gov/points/46.037,-121.7072",
        "gridId": "PQR",
        "latitude": 46.036954999349,
        "longitude": -121.707219999689,
        "metadata-url": "https://api.weather.gov/points/46.037,-121.7072",
        "trailhead": "Trailhead: Middle Trail-Lower",
        "gridX": 149,
        "gridY": 121,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/149,121/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/156,122/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.8465,-121.6934",
        "gridId": "SEW",
        "latitude": 48.8465229985988,
        "longitude": -121.693442999725,
        "metadata-url": "https://api.weather.gov/points/48.8465,-121.6934",
        "trailhead": "Park Glacier Climbing Route",
        "gridX": 156,
        "gridY": 122,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/156,122/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      },
      {
        "id": "https://api.weather.gov/points/48.8463,-121.6924",
        "gridId": "SEW",
        "latitude": 48.8462829987323,
        "longitude": -121.69242400022,
        "metadata-url": "https://api.weather.gov/points/48.8463,-121.6924",
        "trailhead": "Artist Point Trailhead",
        "gridX": 156,
        "gridY": 122,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/156,122/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/157,123/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.8664,-121.677",
        "gridId": "SEW",
        "latitude": 48.8663619990236,
        "longitude": -121.677049000564,
        "metadata-url": "https://api.weather.gov/points/48.8664,-121.677",
        "trailhead": "Picture Lake Path Trailhead",
        "gridX": 157,
        "gridY": 123,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/157,123/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      },
      {
        "id": "https://api.weather.gov/points/48.8571,-121.682",
        "gridId": "SEW",
        "latitude": 48.8571129999572,
        "longitude": -121.681977000037,
        "metadata-url": "https://api.weather.gov/points/48.8571,-121.682",
        "trailhead": "Panorama Dome Trailhead",
        "gridX": 157,
        "gridY": 123,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/157,123/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      },
      {
        "id": "https://api.weather.gov/points/48.8614,-121.6827",
        "gridId": "SEW",
        "latitude": 48.8614399993509,
        "longitude": -121.682654999298,
        "metadata-url": "https://api.weather.gov/points/48.8614,-121.6827",
        "trailhead": "Bagley Lakes Trailhead",
        "gridX": 157,
        "gridY": 123,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/157,123/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      },
      {
        "id": "https://api.weather.gov/points/48.8548,-121.6858",
        "gridId": "SEW",
        "latitude": 48.8548169991755,
        "longitude": -121.685756000002,
        "metadata-url": "https://api.weather.gov/points/48.8548,-121.6858",
        "trailhead": "Heather Meadows Visitor Center",
        "gridX": 157,
        "gridY": 123,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/157,123/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      },
      {
        "id": "https://api.weather.gov/points/48.8542,-121.6859",
        "gridId": "SEW",
        "latitude": 48.8541589986742,
        "longitude": -121.685947000285,
        "metadata-url": "https://api.weather.gov/points/48.8542,-121.6859",
        "trailhead": "Fire and Ice Trailhead",
        "gridX": 157,
        "gridY": 123,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/157,123/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/117,115/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5363,-122.8593",
        "gridId": "SEW",
        "latitude": 48.536294394402,
        "longitude": -122.859284791198,
        "metadata-url": "https://api.weather.gov/points/48.5363,-122.8593",
        "trailhead": "Spencer Spit",
        "gridX": 117,
        "gridY": 115,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/117,115/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ001",
        "county": "https://api.weather.gov/zones/county/WAC055",
        "radarStation": "KATX",
        "city": "Friday Harbor"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/131,24/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.7364,-121.8555",
        "gridId": "SEW",
        "latitude": 46.7363943789305,
        "longitude": -121.855485384966,
        "metadata-url": "https://api.weather.gov/points/46.7364,-121.8555",
        "trailhead": "Kautz Creek",
        "gridX": 131,
        "gridY": 24,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/131,24/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KRTX",
        "city": "Ashford"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/44,124/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9834,-120.577",
        "gridId": "OTX",
        "latitude": 47.9833979994315,
        "longitude": -120.577003000473,
        "metadata-url": "https://api.weather.gov/points/47.9834,-120.577",
        "trailhead": "Entiat Falls Viewpoint",
        "gridX": 44,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/44,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/150,113/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.8716,-121.62",
        "gridId": "PQR",
        "latitude": 45.8716299987522,
        "longitude": -121.619989999344,
        "metadata-url": "https://api.weather.gov/points/45.8716,-121.62",
        "trailhead": "Trailhead: Monte Carlo-Lower",
        "gridX": 150,
        "gridY": 113,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/150,113/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/155,82/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0248,-121.4778",
        "gridId": "SEW",
        "latitude": 48.0248479991063,
        "longitude": -121.477798000357,
        "metadata-url": "https://api.weather.gov/points/48.0248,-121.4778",
        "trailhead": "Sunrise Mine Trailhead",
        "gridX": 155,
        "gridY": 82,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/155,82/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Verlot"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/127,24/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.7059,-121.9927",
        "gridId": "SEW",
        "latitude": 46.7058943951128,
        "longitude": -121.992685369742,
        "metadata-url": "https://api.weather.gov/points/46.7059,-121.9927",
        "trailhead": "Snow Bowl Hut Snowshoe",
        "gridX": 127,
        "gridY": 24,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/127,24/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Ashford"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/62,193/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3441,-121.4246",
        "gridId": "PDT",
        "latitude": 47.3440942982454,
        "longitude": -121.424585316692,
        "metadata-url": "https://api.weather.gov/points/47.3441,-121.4246",
        "trailhead": "Mirror Lake",
        "gridX": 62,
        "gridY": 193,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/62,193/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/61,168/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.8141,-121.3062",
        "gridId": "PDT",
        "latitude": 46.8140943158677,
        "longitude": -121.306185457571,
        "metadata-url": "https://api.weather.gov/points/46.8141,-121.3062",
        "trailhead": "Nelson Ridge and Mount Aix",
        "gridX": 61,
        "gridY": 168,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/61,168/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Cliffdell"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/85,69/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4498,-123.5529",
        "gridId": "SEW",
        "latitude": 47.4498229990042,
        "longitude": -123.552897999253,
        "metadata-url": "https://api.weather.gov/points/47.4498,-123.5529",
        "trailhead": "Wynoochee Lake Shore- Maidenhair Falls Trailhead",
        "gridX": 85,
        "gridY": 69,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/85,69/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Neilton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/143,112/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.8282,-121.8356",
        "gridId": "PQR",
        "latitude": 45.8281944296815,
        "longitude": -121.835585585971,
        "metadata-url": "https://api.weather.gov/points/45.8282,-121.8356",
        "trailhead": "Panther Creek Experimental Forest",
        "gridX": 143,
        "gridY": 112,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/143,112/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Carson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/132,60/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4818,-122.0541",
        "gridId": "SEW",
        "latitude": 47.4817943584805,
        "longitude": -122.054085181466,
        "metadata-url": "https://api.weather.gov/points/47.4818,-122.0541",
        "trailhead": "Phils Trail - Thrush Gap Loop",
        "gridX": 132,
        "gridY": 60,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/132,60/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "East Renton Highlands"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/147,55/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4244,-121.583",
        "gridId": "SEW",
        "latitude": 47.4243789987528,
        "longitude": -121.583040999646,
        "metadata-url": "https://api.weather.gov/points/47.4244,-121.583",
        "trailhead": "Ira Spring Trailhead",
        "gridX": 147,
        "gridY": 55,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/147,55/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Tanner"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/155,124/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.392,-117.1819",
        "gridId": "OTX",
        "latitude": 48.3919779982133,
        "longitude": -117.181945999201,
        "metadata-url": "https://api.weather.gov/points/48.392,-117.1819",
        "trailhead": "South Skookum Lake",
        "gridX": 155,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/155,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC051",
        "radarStation": "KOTX",
        "city": "Cusick"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/145,33/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.9642,-121.4823",
        "gridId": "SEW",
        "latitude": 46.9642009991928,
        "longitude": -121.482264000855,
        "metadata-url": "https://api.weather.gov/points/46.9642,-121.4823",
        "trailhead": "Halfcamp Trailhead",
        "gridX": 145,
        "gridY": 33,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/145,33/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      },
      {
        "id": "https://api.weather.gov/points/46.9642,-121.4823",
        "gridId": "SEW",
        "latitude": 46.9642009991928,
        "longitude": -121.482264000855,
        "metadata-url": "https://api.weather.gov/points/46.9642,-121.4823",
        "trailhead": "Norse Peak 1191",
        "gridX": 145,
        "gridY": 33,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/145,33/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/140,117/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.9081,-121.9463",
        "gridId": "PQR",
        "latitude": 45.9081079985706,
        "longitude": -121.94625599978,
        "metadata-url": "https://api.weather.gov/points/45.9081,-121.9463",
        "trailhead": "Trailhead: Falls Creek",
        "gridX": 140,
        "gridY": 117,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/140,117/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Carson"
      },
      {
        "id": "https://api.weather.gov/points/45.9059,-121.9387",
        "gridId": "PQR",
        "latitude": 45.9058669992133,
        "longitude": -121.938722999427,
        "metadata-url": "https://api.weather.gov/points/45.9059,-121.9387",
        "trailhead": "Trailhead: Falls Creek Falls",
        "gridX": 140,
        "gridY": 117,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/140,117/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Carson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/133,128/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1086,-122.2104",
        "gridId": "PQR",
        "latitude": 46.1086449982053,
        "longitude": -122.210387000297,
        "metadata-url": "https://api.weather.gov/points/46.1086,-122.2104",
        "trailhead": "Ape Cave Interpretive Site",
        "gridX": 133,
        "gridY": 128,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/133,128/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Amboy"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/143,39/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.078,-121.5859",
        "gridId": "SEW",
        "latitude": 47.0779779990414,
        "longitude": -121.585878999289,
        "metadata-url": "https://api.weather.gov/points/47.078,-121.5859",
        "trailhead": "Skookum Flats - North Trailhead",
        "gridX": 143,
        "gridY": 39,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/143,39/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/161,89/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.1784,-121.36",
        "gridId": "SEW",
        "latitude": 48.1784039989777,
        "longitude": -121.359969000101,
        "metadata-url": "https://api.weather.gov/points/48.1784,-121.36",
        "trailhead": "Crystal Creek Trailhead",
        "gridX": 161,
        "gridY": 89,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/161,89/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/123,112/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.505,-122.6445",
        "gridId": "SEW",
        "latitude": 48.5049943718657,
        "longitude": -122.644484833205,
        "metadata-url": "https://api.weather.gov/points/48.505,-122.6445",
        "trailhead": "Little Cranberry Lake-Anacortes Community Forest",
        "gridX": 123,
        "gridY": 112,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/123,112/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ506",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "Anacortes"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/134,117/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6451,-122.3563",
        "gridId": "SEW",
        "latitude": 48.6450943326305,
        "longitude": -122.356284843921,
        "metadata-url": "https://api.weather.gov/points/48.6451,-122.3563",
        "trailhead": "Pacific Northwest Trail",
        "gridX": 134,
        "gridY": 117,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/134,117/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ506",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "Alger"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/108,54/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.2583,-122.7456",
        "gridId": "SEW",
        "latitude": 47.2582944462101,
        "longitude": -122.745585123012,
        "metadata-url": "https://api.weather.gov/points/47.2583,-122.7456",
        "trailhead": "Penrose Point State Park",
        "gridX": 108,
        "gridY": 54,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/108,54/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ509",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KLGX",
        "city": "Home"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/132,8/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.4103,-121.7325",
        "gridId": "SEW",
        "latitude": 46.4102719992291,
        "longitude": -121.732547000019,
        "metadata-url": "https://api.weather.gov/points/46.4103,-121.7325",
        "trailhead": "Trailhead: Blue Lake Hiker",
        "gridX": 132,
        "gridY": 8,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/132,8/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      },
      {
        "id": "https://api.weather.gov/points/46.395,-121.7302",
        "gridId": "SEW",
        "latitude": 46.3950359986574,
        "longitude": -121.730243999975,
        "metadata-url": "https://api.weather.gov/points/46.395,-121.7302",
        "trailhead": "Trailhead: Blue Lake ORV",
        "gridX": 132,
        "gridY": 8,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/132,8/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/148,53/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4012,-121.5185",
        "gridId": "SEW",
        "latitude": 47.4011509994374,
        "longitude": -121.518475000058,
        "metadata-url": "https://api.weather.gov/points/47.4012,-121.5185",
        "trailhead": "Talapus Lake Trailhead",
        "gridX": 148,
        "gridY": 53,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/148,53/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/159,65/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6781,-121.2635",
        "gridId": "SEW",
        "latitude": 47.6780829987964,
        "longitude": -121.263480999661,
        "metadata-url": "https://api.weather.gov/points/47.6781,-121.2635",
        "trailhead": "Tonga Ridge Trailhead",
        "gridX": 159,
        "gridY": 65,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/159,65/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/150,90/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.1697,-121.688",
        "gridId": "SEW",
        "latitude": 48.1697459984356,
        "longitude": -121.688006000093,
        "metadata-url": "https://api.weather.gov/points/48.1697,-121.688",
        "trailhead": "Three Fingers Lookout",
        "gridX": 150,
        "gridY": 90,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/150,90/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Verlot"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/70,143/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4669,-119.8821",
        "gridId": "OTX",
        "latitude": 48.466879999194,
        "longitude": -119.882099999495,
        "metadata-url": "https://api.weather.gov/points/48.4669,-119.8821",
        "trailhead": "Beaver Lake Trailhead",
        "gridX": 70,
        "gridY": 143,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/70,143/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KOTX",
        "city": "Conconully"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/74,175/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.0251,-120.94",
        "gridId": "PDT",
        "latitude": 47.0250999993502,
        "longitude": -120.939999999939,
        "metadata-url": "https://api.weather.gov/points/47.0251,-120.94",
        "trailhead": "Manastash Trailhead",
        "gridX": 74,
        "gridY": 175,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/74,175/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Cliffdell"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/76,71/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4677999,-123.8297",
        "gridId": "SEW",
        "latitude": 47.4677779990875,
        "longitude": -123.829722000043,
        "metadata-url": "https://api.weather.gov/points/47.4678,-123.8297",
        "trailhead": "Wrights Canyon Trailhead",
        "gridX": 76,
        "gridY": 71,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/76,71/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Amanda Park"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/87,29/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.6302,-123.2318",
        "gridId": "SEW",
        "latitude": 46.6301945311146,
        "longitude": -123.231785192502,
        "metadata-url": "https://api.weather.gov/points/46.6302,-123.2318",
        "trailhead": "Rainbow Falls State Park",
        "gridX": 87,
        "gridY": 29,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/87,29/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ504",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KLGX",
        "city": "Pe Ell"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/29,117/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7715,-121.015",
        "gridId": "OTX",
        "latitude": 47.7714999984803,
        "longitude": -121.014999999954,
        "metadata-url": "https://api.weather.gov/points/47.7715,-121.015",
        "trailhead": "Lanham Lake Trailhead",
        "gridX": 29,
        "gridY": 117,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/29,117/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/134,36/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.9924,-121.8506",
        "gridId": "SEW",
        "latitude": 46.9923943631682,
        "longitude": -121.850585327843,
        "metadata-url": "https://api.weather.gov/points/46.9924,-121.8506",
        "trailhead": "Green Lake",
        "gridX": 134,
        "gridY": 36,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/134,36/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Carbonado"
      },
      {
        "id": "https://api.weather.gov/points/46.9906,-121.844",
        "gridId": "SEW",
        "latitude": 46.9905943629473,
        "longitude": -121.843985329439,
        "metadata-url": "https://api.weather.gov/points/46.9906,-121.844",
        "trailhead": "Chenuis Falls",
        "gridX": 134,
        "gridY": 36,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/134,36/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Carbonado"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/153,87/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.1154,-121.5924",
        "gridId": "SEW",
        "latitude": 48.1153942739317,
        "longitude": -121.592385102664,
        "metadata-url": "https://api.weather.gov/points/48.1154,-121.5924",
        "trailhead": "Kelcema Lake",
        "gridX": 153,
        "gridY": 87,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/153,87/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Verlot"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/105,88/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.929,-123.041",
        "gridId": "SEW",
        "latitude": 47.9289999993084,
        "longitude": -123.040952999289,
        "metadata-url": "https://api.weather.gov/points/47.929,-123.041",
        "trailhead": "Sleepy Hollow Trailhead",
        "gridX": 105,
        "gridY": 88,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/105,88/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Blyn"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/139,18/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.627,-121.5878",
        "gridId": "SEW",
        "latitude": 46.6269749989971,
        "longitude": -121.587808999308,
        "metadata-url": "https://api.weather.gov/points/46.627,-121.5878",
        "trailhead": "Trailhead: Three Peaks",
        "gridX": 139,
        "gridY": 18,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/139,18/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/160,117/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7504,-121.5553",
        "gridId": "SEW",
        "latitude": 48.7504459983632,
        "longitude": -121.555282999081,
        "metadata-url": "https://api.weather.gov/points/48.7504,-121.5553",
        "trailhead": "Baker River Trailhead",
        "gridX": 160,
        "gridY": 117,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/160,117/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Marblemount"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/114,137/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.9734,-123.0816",
        "gridId": "SEW",
        "latitude": 48.9733943996114,
        "longitude": -123.081584642576,
        "metadata-url": "https://api.weather.gov/points/48.9734,-123.0816",
        "trailhead": "Lighthouse Marine Park",
        "gridX": 114,
        "gridY": 137,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/114,137/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ503",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Point Roberts"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/138,20/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.6672,-121.6369",
        "gridId": "SEW",
        "latitude": 46.6671669992512,
        "longitude": -121.636908000702,
        "metadata-url": "https://api.weather.gov/points/46.6672,-121.6369",
        "trailhead": "Trailhead: Tatoosh South",
        "gridX": 138,
        "gridY": 20,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/138,20/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/52,155/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6561,-120.511",
        "gridId": "OTX",
        "latitude": 48.6560999992169,
        "longitude": -120.510999999797,
        "metadata-url": "https://api.weather.gov/points/48.6561,-120.511",
        "trailhead": "Monument Creek Trailhead",
        "gridX": 52,
        "gridY": 155,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/52,155/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/107,137/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4819,-118.7273",
        "gridId": "OTX",
        "latitude": 48.4818869994247,
        "longitude": -118.727261999601,
        "metadata-url": "https://api.weather.gov/points/48.4819,-118.7273",
        "trailhead": "Thirteen Mile Trailhead",
        "gridX": 107,
        "gridY": 137,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/107,137/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC019",
        "radarStation": "KOTX",
        "city": "Republic"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/45,149/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5049,-120.7186",
        "gridId": "OTX",
        "latitude": 48.5048999987695,
        "longitude": -120.718640000497,
        "metadata-url": "https://api.weather.gov/points/48.5049,-120.7186",
        "trailhead": "Bridge Creek Trailhead",
        "gridX": 45,
        "gridY": 149,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/45,149/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/39,108/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6285,-120.6565",
        "gridId": "OTX",
        "latitude": 47.6284749988933,
        "longitude": -120.656524999734,
        "metadata-url": "https://api.weather.gov/points/47.6285,-120.6565",
        "trailhead": "Penstock Trailhead",
        "gridX": 39,
        "gridY": 108,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/39,108/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/149,124/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0959,-121.7171",
        "gridId": "PQR",
        "latitude": 46.0959499993398,
        "longitude": -121.717093999717,
        "metadata-url": "https://api.weather.gov/points/46.0959,-121.7171",
        "trailhead": "Interpretive Site: Basket Tree",
        "gridX": 149,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/149,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      },
      {
        "id": "https://api.weather.gov/points/46.0989,-121.7192",
        "gridId": "PQR",
        "latitude": 46.0988699992922,
        "longitude": -121.719170999559,
        "metadata-url": "https://api.weather.gov/points/46.0989,-121.7192",
        "trailhead": "Trailhead: Langfield Falls",
        "gridX": 149,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/149,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/108,116/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5158,-123.1502",
        "gridId": "SEW",
        "latitude": 48.5157944280933,
        "longitude": -123.150184751054,
        "metadata-url": "https://api.weather.gov/points/48.5158,-123.1502",
        "trailhead": "Lime Kiln State Park",
        "gridX": 108,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/108,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ001",
        "county": "https://api.weather.gov/zones/county/WAC055",
        "radarStation": "KATX",
        "city": "Friday Harbor"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/66,94/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.882,-124.2756",
        "gridId": "SEW",
        "latitude": 47.8820279985436,
        "longitude": -124.275564999636,
        "metadata-url": "https://api.weather.gov/points/47.882,-124.2756",
        "trailhead": "Bogachiel Rain Forest River Trailhead",
        "gridX": 66,
        "gridY": 94,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/66,94/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Forks"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/157,76/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8983,-121.4014",
        "gridId": "SEW",
        "latitude": 47.8982942642727,
        "longitude": -121.40138518816,
        "metadata-url": "https://api.weather.gov/points/47.8983,-121.4014",
        "trailhead": "Troublesome Creek Nature",
        "gridX": 157,
        "gridY": 76,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/157,76/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Index"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/83,99/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0578,-123.7884",
        "gridId": "SEW",
        "latitude": 48.0577945218006,
        "longitude": -123.788384768291,
        "metadata-url": "https://api.weather.gov/points/48.0578,-123.7884",
        "trailhead": "Marymere Falls",
        "gridX": 83,
        "gridY": 99,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/83,99/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/139,135/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2823,-122.0955",
        "gridId": "PQR",
        "latitude": 46.2822729984294,
        "longitude": -122.095481000014,
        "metadata-url": "https://api.weather.gov/points/46.2823,-122.0955",
        "trailhead": "Independence Pass Trailhead",
        "gridX": 139,
        "gridY": 135,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/139,135/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Morton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/154,128/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.9589,-121.807",
        "gridId": "SEW",
        "latitude": 48.9588959985277,
        "longitude": -121.807001999485,
        "metadata-url": "https://api.weather.gov/points/48.9589,-121.807",
        "trailhead": "Damfino Lakes Trailhead",
        "gridX": 154,
        "gridY": 128,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/154,128/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/55,140/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.3519999,-120.3539",
        "gridId": "OTX",
        "latitude": 48.3520139993227,
        "longitude": -120.353943000808,
        "metadata-url": "https://api.weather.gov/points/48.352,-120.3539",
        "trailhead": "Twisp River Trail Trailhead",
        "gridX": 55,
        "gridY": 140,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/55,140/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Twisp"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/91,43/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.9485,-123.194",
        "gridId": "SEW",
        "latitude": 46.9484945105414,
        "longitude": -123.193985125514,
        "metadata-url": "https://api.weather.gov/points/46.9485,-123.194",
        "trailhead": "Capitol State Forest - Capitol Peak",
        "gridX": 91,
        "gridY": 43,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/91,43/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ512",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Porter"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/88,95/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0019,-123.6044",
        "gridId": "SEW",
        "latitude": 48.0018945035502,
        "longitude": -123.604384810284,
        "metadata-url": "https://api.weather.gov/points/48.0019,-123.6044",
        "trailhead": "Lake Mills",
        "gridX": 88,
        "gridY": 95,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/88,95/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/161,76/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9268,-121.2766",
        "gridId": "SEW",
        "latitude": 47.9268369985139,
        "longitude": -121.2766179994,
        "metadata-url": "https://api.weather.gov/points/47.9268,-121.2766",
        "trailhead": "North Fork Skykomish Trailhead",
        "gridX": 161,
        "gridY": 76,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/161,76/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Baring"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/150,151/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.9313,-117.4821",
        "gridId": "OTX",
        "latitude": 48.9313259995241,
        "longitude": -117.482077999418,
        "metadata-url": "https://api.weather.gov/points/48.9313,-117.4821",
        "trailhead": "Abercrombie Trailhead",
        "gridX": 150,
        "gridY": 151,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/150,151/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC065",
        "radarStation": "KOTX",
        "city": "Metaline"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/139,130/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1828999,-122.0536",
        "gridId": "PQR",
        "latitude": 46.1829339982954,
        "longitude": -122.053612999774,
        "metadata-url": "https://api.weather.gov/points/46.1829,-122.0536",
        "trailhead": "Smith Creek Trailhead (Road 8322)",
        "gridX": 139,
        "gridY": 130,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/139,130/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Yacolt"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/82,99/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0679,-123.826",
        "gridId": "SEW",
        "latitude": 48.0678722312562,
        "longitude": -123.825953046978,
        "metadata-url": "https://api.weather.gov/points/48.0679,-123.826",
        "trailhead": "Spruce Railraod Trail (N Shore Road)",
        "gridX": 82,
        "gridY": 99,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/82,99/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      },
      {
        "id": "https://api.weather.gov/points/48.0515,-123.8395",
        "gridId": "SEW",
        "latitude": 48.05145489534,
        "longitude": -123.839460236248,
        "metadata-url": "https://api.weather.gov/points/48.0515,-123.8395",
        "trailhead": "Aurora Creek",
        "gridX": 82,
        "gridY": 99,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/82,99/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/133,105/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.3985,-122.3028",
        "gridId": "SEW",
        "latitude": 48.3984943382625,
        "longitude": -122.30278491529,
        "metadata-url": "https://api.weather.gov/points/48.3985,-122.3028",
        "trailhead": "Little Mountain Park",
        "gridX": 133,
        "gridY": 105,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/133,105/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ506",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "Mount Vernon"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/154,92/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.2191,-121.5693",
        "gridId": "SEW",
        "latitude": 48.2190942660667,
        "longitude": -121.569285081116,
        "metadata-url": "https://api.weather.gov/points/48.2191,-121.5693",
        "trailhead": "Frog Lake",
        "gridX": 154,
        "gridY": 92,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/154,92/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/45,122/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9396,-120.5531",
        "gridId": "OTX",
        "latitude": 47.9395609989435,
        "longitude": -120.553119000934,
        "metadata-url": "https://api.weather.gov/points/47.9396,-120.5531",
        "trailhead": "North Tommy Trailhead",
        "gridX": 45,
        "gridY": 122,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/45,122/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/141,24/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.7590999,-121.5579",
        "gridId": "SEW",
        "latitude": 46.75909434522,
        "longitude": -121.557885428892,
        "metadata-url": "https://api.weather.gov/points/46.7591,-121.5579",
        "trailhead": "East Side Trail",
        "gridX": 141,
        "gridY": 24,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/141,24/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/103,87/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9127,-123.1108",
        "gridId": "SEW",
        "latitude": 47.9126829989721,
        "longitude": -123.110804000101,
        "metadata-url": "https://api.weather.gov/points/47.9127,-123.1108",
        "trailhead": "Three O'Clock Ridge Trailhead",
        "gridX": 103,
        "gridY": 87,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/103,87/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Blyn"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/134,58/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4325,-121.9727",
        "gridId": "SEW",
        "latitude": 47.4324943520561,
        "longitude": -121.97268520565,
        "metadata-url": "https://api.weather.gov/points/47.4325,-121.9727",
        "trailhead": "Holder Knob",
        "gridX": 134,
        "gridY": 58,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/134,58/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Mirrormont"
      },
      {
        "id": "https://api.weather.gov/points/47.4425,-121.9776",
        "gridId": "SEW",
        "latitude": 47.4424943522065,
        "longitude": -121.977585202882,
        "metadata-url": "https://api.weather.gov/points/47.4425,-121.9776",
        "trailhead": "Tiger Mountain Trail",
        "gridX": 134,
        "gridY": 58,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/134,58/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Mirrormont"
      },
      {
        "id": "https://api.weather.gov/points/47.4335,-121.9727",
        "gridId": "SEW",
        "latitude": 47.4334943528542,
        "longitude": -121.972685206004,
        "metadata-url": "https://api.weather.gov/points/47.4335,-121.9727",
        "trailhead": "Taylor Mountain",
        "gridX": 134,
        "gridY": 58,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/134,58/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Mirrormont"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/39,124/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9549,-120.735",
        "gridId": "OTX",
        "latitude": 47.9548999983812,
        "longitude": -120.734999999667,
        "metadata-url": "https://api.weather.gov/points/47.9549,-120.735",
        "trailhead": "Minnow Creek Trailhead",
        "gridX": 39,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/39,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/165,93/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.2927,-121.2379",
        "gridId": "SEW",
        "latitude": 48.2926609998378,
        "longitude": -121.237917999512,
        "metadata-url": "https://api.weather.gov/points/48.2927,-121.2379",
        "trailhead": "Green Mountain Lookout",
        "gridX": 165,
        "gridY": 93,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/165,93/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/40,125/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9805,-120.702",
        "gridId": "OTX",
        "latitude": 47.9804999982199,
        "longitude": -120.701999999073,
        "metadata-url": "https://api.weather.gov/points/47.9805,-120.702",
        "trailhead": "Chikamin Tie ORV Trailhead",
        "gridX": 40,
        "gridY": 125,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/40,125/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/72,161/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.8555,-119.9452",
        "gridId": "OTX",
        "latitude": 48.8554799982727,
        "longitude": -119.945249999691,
        "metadata-url": "https://api.weather.gov/points/48.8555,-119.9452",
        "trailhead": "Windy Peak Trailhead",
        "gridX": 72,
        "gridY": 161,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/72,161/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Loomis"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/133,120/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.9468,-122.1761",
        "gridId": "PQR",
        "latitude": 45.9467979994682,
        "longitude": -122.176122000215,
        "metadata-url": "https://api.weather.gov/points/45.9468,-122.1761",
        "trailhead": "Trailhead: Siouxon",
        "gridX": 133,
        "gridY": 120,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/133,120/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ040",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Yacolt"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/42,126/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.8615,-121.6083",
        "gridId": "PDT",
        "latitude": 45.8614799989546,
        "longitude": -121.60829000073,
        "metadata-url": "https://api.weather.gov/points/45.8615,-121.6083",
        "trailhead": "Trailhead: Monte Carlo-Upper",
        "gridX": 42,
        "gridY": 126,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/42,126/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC039",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/126,19/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1192,-117.5367",
        "gridId": "OTX",
        "latitude": 46.1191579992713,
        "longitude": -117.536736999604,
        "metadata-url": "https://api.weather.gov/points/46.1192,-117.5367",
        "trailhead": "Diamond Trailhead",
        "gridX": 126,
        "gridY": 19,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/126,19/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ031",
        "county": "https://api.weather.gov/zones/county/WAC023",
        "radarStation": "KPDT",
        "city": "Pomeroy"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/74,164/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.9082999,-119.9039",
        "gridId": "OTX",
        "latitude": 48.9083269991643,
        "longitude": -119.90387700018,
        "metadata-url": "https://api.weather.gov/points/48.9083,-119.9039",
        "trailhead": "Iron Gate Trailhead",
        "gridX": 74,
        "gridY": 164,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/74,164/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Loomis"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/113,140/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5666,-118.5605",
        "gridId": "OTX",
        "latitude": 48.5666189997269,
        "longitude": -118.560493999844,
        "metadata-url": "https://api.weather.gov/points/48.5666,-118.5605",
        "trailhead": "Edds Mountain Trailhead",
        "gridX": 113,
        "gridY": 140,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/113,140/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC019",
        "radarStation": "KOTX",
        "city": "Pine Grove"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/59,159/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.6344,-121.3033",
        "gridId": "PDT",
        "latitude": 46.6343943263683,
        "longitude": -121.303285498156,
        "metadata-url": "https://api.weather.gov/points/46.6344,-121.3033",
        "trailhead": "Round Mountain",
        "gridX": 59,
        "gridY": 159,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/59,159/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/166,91/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.2498,-121.1936",
        "gridId": "SEW",
        "latitude": 48.2497942222686,
        "longitude": -121.193585136637,
        "metadata-url": "https://api.weather.gov/points/48.2498,-121.1936",
        "trailhead": "Sulphur Creek",
        "gridX": 166,
        "gridY": 91,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/166,91/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/131,120/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.9405,-122.2292",
        "gridId": "PQR",
        "latitude": 45.9404944637721,
        "longitude": -122.229185499893,
        "metadata-url": "https://api.weather.gov/points/45.9405,-122.2292",
        "trailhead": "Huffman Peak",
        "gridX": 131,
        "gridY": 120,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/131,120/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ040",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Yacolt"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/38,116/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8001,-120.724",
        "gridId": "OTX",
        "latitude": 47.8000999986916,
        "longitude": -120.724000000221,
        "metadata-url": "https://api.weather.gov/points/47.8001,-120.724",
        "trailhead": "Nason Ridge Trailhead",
        "gridX": 38,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/38,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/76,72/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4682,-123.8461",
        "gridId": "SEW",
        "latitude": 47.468157999,
        "longitude": -123.846085000233,
        "metadata-url": "https://api.weather.gov/points/47.4682,-123.8461",
        "trailhead": "Falls Creek - South Shore Trailhead",
        "gridX": 76,
        "gridY": 72,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/76,72/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Amanda Park"
      },
      {
        "id": "https://api.weather.gov/points/47.4759,-123.8306",
        "gridId": "SEW",
        "latitude": 47.4758799993593,
        "longitude": -123.830619999601,
        "metadata-url": "https://api.weather.gov/points/47.4759,-123.8306",
        "trailhead": "Big Spruce Trailhead",
        "gridX": 76,
        "gridY": 72,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/76,72/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Amanda Park"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/135,15/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.5628,-121.7092",
        "gridId": "SEW",
        "latitude": 46.5627943728794,
        "longitude": -121.709185447806,
        "metadata-url": "https://api.weather.gov/points/46.5628,-121.7092",
        "trailhead": "Dry Creek",
        "gridX": 135,
        "gridY": 15,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/135,15/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/56,133/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.2204,-120.2679",
        "gridId": "OTX",
        "latitude": 48.2203679990554,
        "longitude": -120.267878000915,
        "metadata-url": "https://api.weather.gov/points/48.2204,-120.2679",
        "trailhead": "Crater Creek Trailhead",
        "gridX": 56,
        "gridY": 133,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/56,133/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Twisp"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/57,161/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.6551,-121.362",
        "gridId": "PDT",
        "latitude": 46.655099999038,
        "longitude": -121.36200000067,
        "metadata-url": "https://api.weather.gov/points/46.6551,-121.362",
        "trailhead": "Dog Lake Day Use/Boat Launch/Trailhead",
        "gridX": 57,
        "gridY": 161,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/57,161/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/138,13/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.5184,-121.5944",
        "gridId": "SEW",
        "latitude": 46.5184019991936,
        "longitude": -121.594427000235,
        "metadata-url": "https://api.weather.gov/points/46.5184,-121.5944",
        "trailhead": "Trailhead: Angry Mountain",
        "gridX": 138,
        "gridY": 13,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/138,13/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/161,84/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0863,-121.3084",
        "gridId": "SEW",
        "latitude": 48.0863079997456,
        "longitude": -121.308408000579,
        "metadata-url": "https://api.weather.gov/points/48.0863,-121.3084",
        "trailhead": "Sloan Peak Trailhead",
        "gridX": 161,
        "gridY": 84,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/161,84/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/54,129/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.1198,-120.303",
        "gridId": "OTX",
        "latitude": 48.1198199991932,
        "longitude": -120.303014000296,
        "metadata-url": "https://api.weather.gov/points/48.1198,-120.303",
        "trailhead": "Summer Blossom Trailhead",
        "gridX": 54,
        "gridY": 129,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/54,129/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Methow"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/107,82/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8162,-122.9645",
        "gridId": "SEW",
        "latitude": 47.816187999242,
        "longitude": -122.964542000223,
        "metadata-url": "https://api.weather.gov/points/47.8162,-122.9645",
        "trailhead": "Notch Pass Upper Trailhead",
        "gridX": 107,
        "gridY": 82,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/107,82/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Quilcene"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/156,118/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7648,-121.6699",
        "gridId": "SEW",
        "latitude": 48.7648309989553,
        "longitude": -121.669883000002,
        "metadata-url": "https://api.weather.gov/points/48.7648,-121.6699",
        "trailhead": "Swift Creek Trailhead",
        "gridX": 156,
        "gridY": 118,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/156,118/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/135,35/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.9766,-121.8306",
        "gridId": "SEW",
        "latitude": 46.9765943620947,
        "longitude": -121.830585334583,
        "metadata-url": "https://api.weather.gov/points/46.9766,-121.8306",
        "trailhead": "Boundary Trail",
        "gridX": 135,
        "gridY": 35,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/135,35/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Carbonado"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/150,126/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.9022999,-121.9117",
        "gridId": "SEW",
        "latitude": 48.9022942695738,
        "longitude": -121.911684850225,
        "metadata-url": "https://api.weather.gov/points/48.9023,-121.9117",
        "trailhead": "Horseshoe Bend",
        "gridX": 150,
        "gridY": 126,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/150,126/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/98,73/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5995,-123.1587",
        "gridId": "SEW",
        "latitude": 47.5994799992093,
        "longitude": -123.158667999651,
        "metadata-url": "https://api.weather.gov/points/47.5995,-123.1587",
        "trailhead": "Hamma Hamma Beaver Pond #815",
        "gridX": 98,
        "gridY": 73,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/98,73/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KATX",
        "city": "Brinnon"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/132,34/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.935,-121.9068",
        "gridId": "SEW",
        "latitude": 46.9349943725311,
        "longitude": -121.906785331418,
        "metadata-url": "https://api.weather.gov/points/46.935,-121.9068",
        "trailhead": "Paul Peak",
        "gridX": 132,
        "gridY": 34,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/132,34/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Carbonado"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/46,123/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9662,-120.5115",
        "gridId": "OTX",
        "latitude": 47.9662419992562,
        "longitude": -120.511499000176,
        "metadata-url": "https://api.weather.gov/points/47.9662,-120.5115",
        "trailhead": "Halfway Springs",
        "gridX": 46,
        "gridY": 123,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/46,123/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/158,64/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6653,-121.2883",
        "gridId": "SEW",
        "latitude": 47.6652909986716,
        "longitude": -121.288276000643,
        "metadata-url": "https://api.weather.gov/points/47.6653,-121.2883",
        "trailhead": "Necklace Valley Trailhead",
        "gridX": 158,
        "gridY": 64,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/158,64/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/160,72/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8264,-121.2771",
        "gridId": "SEW",
        "latitude": 47.8263942546037,
        "longitude": -121.277085225284,
        "metadata-url": "https://api.weather.gov/points/47.8264,-121.2771",
        "trailhead": "Evergreen Mountain Lookout",
        "gridX": 160,
        "gridY": 72,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/160,72/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/125,93/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.122,-122.491",
        "gridId": "SEW",
        "latitude": 48.1219943731931,
        "longitude": -122.490984954494,
        "metadata-url": "https://api.weather.gov/points/48.122,-122.491",
        "trailhead": "Camano Island State Park",
        "gridX": 125,
        "gridY": 93,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/125,93/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ510",
        "county": "https://api.weather.gov/zones/county/WAC029",
        "radarStation": "KATX",
        "city": "Camano"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/107,76/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6905,-122.9052",
        "gridId": "SEW",
        "latitude": 47.6904944408175,
        "longitude": -122.905184995492,
        "metadata-url": "https://api.weather.gov/points/47.6905,-122.9052",
        "trailhead": "Maple Valley Loop",
        "gridX": 107,
        "gridY": 76,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/107,76/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ511",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Brinnon"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/170,114/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1182,-117.7147",
        "gridId": "PDT",
        "latitude": 46.1181529995984,
        "longitude": -117.714743999463,
        "metadata-url": "https://api.weather.gov/points/46.1182,-117.7147",
        "trailhead": "Teepee Trailhead",
        "gridX": 170,
        "gridY": 114,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/170,114/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ030",
        "county": "https://api.weather.gov/zones/county/WAC013",
        "radarStation": "KPDT",
        "city": "Dayton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/152,96/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8013,-117.1211",
        "gridId": "OTX",
        "latitude": 47.8012938080601,
        "longitude": -117.121085971075,
        "metadata-url": "https://api.weather.gov/points/47.8013,-117.1211",
        "trailhead": "McKenzie Conservation Area",
        "gridX": 152,
        "gridY": 96,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/152,96/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC063",
        "radarStation": "KOTX",
        "city": "Hauser"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/83,188/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3267,-120.7509",
        "gridId": "PDT",
        "latitude": 47.3266942263965,
        "longitude": -120.750885432239,
        "metadata-url": "https://api.weather.gov/points/47.3267,-120.7509",
        "trailhead": "Red Top Lookout",
        "gridX": 83,
        "gridY": 188,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/83,188/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Cle Elum"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/133,62/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5179,-122.0367",
        "gridId": "SEW",
        "latitude": 47.5178943547902,
        "longitude": -122.0366851757,
        "metadata-url": "https://api.weather.gov/points/47.5179,-122.0367",
        "trailhead": "Squak Mountain Access Trail",
        "gridX": 133,
        "gridY": 62,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/133,62/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ556",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Issaquah"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/157,89/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.1706,-121.4721",
        "gridId": "SEW",
        "latitude": 48.1705942574803,
        "longitude": -121.472085109018,
        "metadata-url": "https://api.weather.gov/points/48.1706,-121.4721",
        "trailhead": "Beaver Lake",
        "gridX": 157,
        "gridY": 89,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/157,89/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/111,138/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5165,-118.6013",
        "gridId": "OTX",
        "latitude": 48.5164749989905,
        "longitude": -118.601255999469,
        "metadata-url": "https://api.weather.gov/points/48.5165,-118.6013",
        "trailhead": "Bear Pot Trailhead",
        "gridX": 111,
        "gridY": 138,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/111,138/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC019",
        "radarStation": "KOTX",
        "city": "Pine Grove"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/145,88/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6053,-117.2808",
        "gridId": "OTX",
        "latitude": 47.6052938384471,
        "longitude": -117.280785986388,
        "metadata-url": "https://api.weather.gov/points/47.6053,-117.2808",
        "trailhead": "Iller Creek",
        "gridX": 145,
        "gridY": 88,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/145,88/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ036",
        "county": "https://api.weather.gov/zones/county/WAC063",
        "radarStation": "KOTX",
        "city": "Spokane Valley"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/68,193/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3587,-121.246",
        "gridId": "PDT",
        "latitude": 47.358694277407,
        "longitude": -121.245985341933,
        "metadata-url": "https://api.weather.gov/points/47.3587,-121.246",
        "trailhead": "Kachess Lake",
        "gridX": 68,
        "gridY": 193,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/68,193/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Roslyn"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/129,28/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.7966,-121.9464",
        "gridId": "SEW",
        "latitude": 46.7965929989017,
        "longitude": -121.946405999084,
        "metadata-url": "https://api.weather.gov/points/46.7966,-121.9464",
        "trailhead": "Trailhead: Glacier View",
        "gridX": 129,
        "gridY": 28,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/129,28/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KRTX",
        "city": "Ashford"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/139,112/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.8102,-121.9429",
        "gridId": "PQR",
        "latitude": 45.8101999982711,
        "longitude": -121.94289999934,
        "metadata-url": "https://api.weather.gov/points/45.8102,-121.9429",
        "trailhead": "Trailhead: Whistle Punk",
        "gridX": 139,
        "gridY": 112,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/139,112/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Carson"
      },
      {
        "id": "https://api.weather.gov/points/45.8113,-121.9558",
        "gridId": "PQR",
        "latitude": 45.8112999982723,
        "longitude": -121.955799999265,
        "metadata-url": "https://api.weather.gov/points/45.8113,-121.9558",
        "trailhead": "Trailhead: Trout Creek",
        "gridX": 139,
        "gridY": 112,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/139,112/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Carson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/129,110/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4803,-122.4731",
        "gridId": "SEW",
        "latitude": 48.4802943537274,
        "longitude": -122.473084868075,
        "metadata-url": "https://api.weather.gov/points/48.4803,-122.4731",
        "trailhead": "Padilla Bay",
        "gridX": 129,
        "gridY": 110,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/129,110/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ506",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "Bay View"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/94,95/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.034,-123.4245",
        "gridId": "SEW",
        "latitude": 48.0339833667727,
        "longitude": -123.424493223038,
        "metadata-url": "https://api.weather.gov/points/48.034,-123.4245",
        "trailhead": "Heart of the Forest Trail",
        "gridX": 94,
        "gridY": 95,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/94,95/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles East"
      },
      {
        "id": "https://api.weather.gov/points/48.039,-123.4315",
        "gridId": "SEW",
        "latitude": 48.0389642704399,
        "longitude": -123.431513939428,
        "metadata-url": "https://api.weather.gov/points/48.039,-123.4315",
        "trailhead": "Heart O' The Hills",
        "gridX": 94,
        "gridY": 95,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/94,95/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/115,140/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5736,-118.4892",
        "gridId": "OTX",
        "latitude": 48.5736099986444,
        "longitude": -118.489170000092,
        "metadata-url": "https://api.weather.gov/points/48.5736,-118.4892",
        "trailhead": "Snow Peak Cabin",
        "gridX": 115,
        "gridY": 140,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/115,140/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC019",
        "radarStation": "KOTX",
        "city": "Pine Grove"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/56,131/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.1751,-120.2613",
        "gridId": "OTX",
        "latitude": 48.1751299990384,
        "longitude": -120.261250000778,
        "metadata-url": "https://api.weather.gov/points/48.1751,-120.2613",
        "trailhead": "Foggy Dew Trailhead",
        "gridX": 56,
        "gridY": 131,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/56,131/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Methow"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/140,19/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.6532,-121.5705",
        "gridId": "SEW",
        "latitude": 46.6531943529964,
        "longitude": -121.570485449916,
        "metadata-url": "https://api.weather.gov/points/46.6532,-121.5705",
        "trailhead": "Bluff Lake",
        "gridX": 140,
        "gridY": 19,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/140,19/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/131,51/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.2771,-122.0313",
        "gridId": "SEW",
        "latitude": 47.2770943669294,
        "longitude": -122.031285232482,
        "metadata-url": "https://api.weather.gov/points/47.2771,-122.0313",
        "trailhead": "Flaming Geyser State Park",
        "gridX": 131,
        "gridY": 51,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/131,51/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Black Diamond"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/104,88/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9306,-123.0959",
        "gridId": "SEW",
        "latitude": 47.9306039994258,
        "longitude": -123.095891999969,
        "metadata-url": "https://api.weather.gov/points/47.9306,-123.0959",
        "trailhead": "Lower Dungeness/Gold Creek Trailhead",
        "gridX": 104,
        "gridY": 88,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/104,88/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Blyn"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/92,93/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9701,-123.495",
        "gridId": "SEW",
        "latitude": 47.9700944931302,
        "longitude": -123.494984834342,
        "metadata-url": "https://api.weather.gov/points/47.9701,-123.495",
        "trailhead": "Sunrise Ridge",
        "gridX": 92,
        "gridY": 93,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/92,93/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/44,92/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3277,-120.4068",
        "gridId": "OTX",
        "latitude": 47.3276999993869,
        "longitude": -120.406800000733,
        "metadata-url": "https://api.weather.gov/points/47.3277,-120.4068",
        "trailhead": "Upper Devils Gulch ORV Trailhead",
        "gridX": 44,
        "gridY": 92,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/44,92/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "South Wenatchee"
      },
      {
        "id": "https://api.weather.gov/points/47.3249,-120.402",
        "gridId": "OTX",
        "latitude": 47.3249019995866,
        "longitude": -120.402000000032,
        "metadata-url": "https://api.weather.gov/points/47.3249,-120.402",
        "trailhead": "Beehive ORV Trailhead",
        "gridX": 44,
        "gridY": 92,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/44,92/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "South Wenatchee"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/60,87/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.71,-124.4139",
        "gridId": "SEW",
        "latitude": 47.7099555602926,
        "longitude": -124.413858934875,
        "metadata-url": "https://api.weather.gov/points/47.71,-124.4139",
        "trailhead": "Ruby Beach",
        "gridX": 60,
        "gridY": 87,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/60,87/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ516",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KLGX",
        "city": "Queets"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/81,71/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.484,-123.6828",
        "gridId": "SEW",
        "latitude": 47.4839999985056,
        "longitude": -123.682790000052,
        "metadata-url": "https://api.weather.gov/points/47.484,-123.6828",
        "trailhead": "Middle West Fork Humptulips Trailhead",
        "gridX": 81,
        "gridY": 71,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/81,71/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Neilton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/69,152/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6469,-119.9686",
        "gridId": "OTX",
        "latitude": 48.6469199992538,
        "longitude": -119.968632000113,
        "metadata-url": "https://api.weather.gov/points/48.6469,-119.9686",
        "trailhead": "Bernhardt Mine Trailhead",
        "gridX": 69,
        "gridY": 152,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/69,152/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Conconully"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/155,117/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7352,-121.7102",
        "gridId": "SEW",
        "latitude": 48.7351699988788,
        "longitude": -121.710243999756,
        "metadata-url": "https://api.weather.gov/points/48.7352,-121.7102",
        "trailhead": "Boulder Ridge Trailhead",
        "gridX": 155,
        "gridY": 117,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/155,117/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Concrete"
      },
      {
        "id": "https://api.weather.gov/points/48.7355,-121.7103",
        "gridId": "SEW",
        "latitude": 48.735473999144,
        "longitude": -121.710277000349,
        "metadata-url": "https://api.weather.gov/points/48.7355,-121.7103",
        "trailhead": "Boulder Glacier Climbing Route",
        "gridX": 155,
        "gridY": 117,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/155,117/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Concrete"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/133,61/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5,-122.0219",
        "gridId": "SEW",
        "latitude": 47.4999943543171,
        "longitude": -122.021885181473,
        "metadata-url": "https://api.weather.gov/points/47.5,-122.0219",
        "trailhead": "Poo Poo Point - Chirico Trail",
        "gridX": 133,
        "gridY": 61,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/133,61/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Issaquah"
      },
      {
        "id": "https://api.weather.gov/points/47.5045,-122.0469",
        "gridId": "SEW",
        "latitude": 47.5044943566007,
        "longitude": -122.046885176856,
        "metadata-url": "https://api.weather.gov/points/47.5045,-122.0469",
        "trailhead": "Summit Trail",
        "gridX": 133,
        "gridY": 61,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/133,61/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Issaquah"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/65,158/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7563,-120.1392",
        "gridId": "OTX",
        "latitude": 48.7563099987722,
        "longitude": -120.139209999395,
        "metadata-url": "https://api.weather.gov/points/48.7563,-120.1392",
        "trailhead": "Crystal Trailhead",
        "gridX": 65,
        "gridY": 158,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/65,158/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/93,93/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9866,-123.4611",
        "gridId": "SEW",
        "latitude": 47.9865626433912,
        "longitude": -123.461091387144,
        "metadata-url": "https://api.weather.gov/points/47.9866,-123.4611",
        "trailhead": "Switchback Trail",
        "gridX": 93,
        "gridY": 93,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/93,93/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/104,76/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6811999,-122.9942",
        "gridId": "SEW",
        "latitude": 47.6812429983444,
        "longitude": -122.994167999765,
        "metadata-url": "https://api.weather.gov/points/47.6812,-122.9942",
        "trailhead": "Interrorem Cabin",
        "gridX": 104,
        "gridY": 76,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/104,76/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ511",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Brinnon"
      },
      {
        "id": "https://api.weather.gov/points/47.6816,-122.9943",
        "gridId": "SEW",
        "latitude": 47.6815709989233,
        "longitude": -122.994296000751,
        "metadata-url": "https://api.weather.gov/points/47.6816,-122.9943",
        "trailhead": "Ranger Hole Trailhead",
        "gridX": 104,
        "gridY": 76,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/104,76/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ511",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Brinnon"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/47,95/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3968,-120.3295",
        "gridId": "OTX",
        "latitude": 47.3967941766319,
        "longitude": -120.329485488303,
        "metadata-url": "https://api.weather.gov/points/47.3968,-120.3295",
        "trailhead": "Saddle Rock",
        "gridX": 47,
        "gridY": 95,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/47,95/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ041",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Wenatchee"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/124,104/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.3412,-122.5697",
        "gridId": "SEW",
        "latitude": 48.3411943714606,
        "longitude": -122.5696848875,
        "metadata-url": "https://api.weather.gov/points/48.3412,-122.5697",
        "trailhead": "Dugualla State Park",
        "gridX": 124,
        "gridY": 104,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/124,104/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ510",
        "county": "https://api.weather.gov/zones/county/WAC029",
        "radarStation": "KATX",
        "city": "Whidbey Island Station"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/57,160/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.645,-121.381",
        "gridId": "PDT",
        "latitude": 46.6449999994197,
        "longitude": -121.38099999966,
        "metadata-url": "https://api.weather.gov/points/46.645,-121.381",
        "trailhead": "White Pass Day Use/Boat Launch/Trailhead",
        "gridX": 57,
        "gridY": 160,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/57,160/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/161,81/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0253,-121.2863",
        "gridId": "SEW",
        "latitude": 48.0253499986568,
        "longitude": -121.286276999278,
        "metadata-url": "https://api.weather.gov/points/48.0253,-121.2863",
        "trailhead": "Bald Eagle Trailhead",
        "gridX": 161,
        "gridY": 81,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/161,81/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Index"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/79,97/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.004,-123.9055",
        "gridId": "SEW",
        "latitude": 48.0040234730689,
        "longitude": -123.905522138743,
        "metadata-url": "https://api.weather.gov/points/48.004,-123.9055",
        "trailhead": "Ancient Groves Nature Trail",
        "gridX": 79,
        "gridY": 97,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/79,97/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Port Angeles"
      },
      {
        "id": "https://api.weather.gov/points/48.0108,-123.9112",
        "gridId": "SEW",
        "latitude": 48.0107936230135,
        "longitude": -123.911190809866,
        "metadata-url": "https://api.weather.gov/points/48.0108,-123.9112",
        "trailhead": "North Fork Sol Duc",
        "gridX": 79,
        "gridY": 97,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/79,97/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Forks"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/144,17/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.6317,-121.4361",
        "gridId": "SEW",
        "latitude": 46.6317279989731,
        "longitude": -121.436083000021,
        "metadata-url": "https://api.weather.gov/points/46.6317,-121.4361",
        "trailhead": "Trailhead: Sand Lake",
        "gridX": 144,
        "gridY": 17,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/144,17/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      },
      {
        "id": "https://api.weather.gov/points/46.626,-121.4446",
        "gridId": "SEW",
        "latitude": 46.6259759991883,
        "longitude": -121.444605999867,
        "metadata-url": "https://api.weather.gov/points/46.626,-121.4446",
        "trailhead": "Trailhead: Clear Lost",
        "gridX": 144,
        "gridY": 17,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/144,17/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/96,69/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4943,-123.2118",
        "gridId": "SEW",
        "latitude": 47.4942689987611,
        "longitude": -123.211813999641,
        "metadata-url": "https://api.weather.gov/points/47.4943,-123.2118",
        "trailhead": "Big Creek 4 Mile & Campground Loop Trailhead",
        "gridX": 96,
        "gridY": 69,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/96,69/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      },
      {
        "id": "https://api.weather.gov/points/47.4936999,-123.2118",
        "gridId": "SEW",
        "latitude": 47.4936799990541,
        "longitude": -123.211779999943,
        "metadata-url": "https://api.weather.gov/points/47.4937,-123.2118",
        "trailhead": "Big Creek Upper Loop #827.1 & #827.2",
        "gridX": 96,
        "gridY": 69,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/96,69/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/135,120/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7191,-122.3554",
        "gridId": "SEW",
        "latitude": 48.7190943289579,
        "longitude": -122.35538482464,
        "metadata-url": "https://api.weather.gov/points/48.7191,-122.3554",
        "trailhead": "Lookout Mountain Forest Preserve",
        "gridX": 135,
        "gridY": 120,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/135,120/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ503",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Sudden Valley"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/148,60/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5373,-121.5775",
        "gridId": "SEW",
        "latitude": 47.5372943038133,
        "longitude": -121.577485244778,
        "metadata-url": "https://api.weather.gov/points/47.5373,-121.5775",
        "trailhead": "CCC Road: Upper Trailhead",
        "gridX": 148,
        "gridY": 60,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/148,60/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Tanner"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/157,125/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.9135,-121.6997",
        "gridId": "SEW",
        "latitude": 48.9134819994848,
        "longitude": -121.699735999828,
        "metadata-url": "https://api.weather.gov/points/48.9135,-121.6997",
        "trailhead": "Welcome Pass Trailhead",
        "gridX": 157,
        "gridY": 125,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/157,125/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/138,116/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.8846,-122.0001",
        "gridId": "PQR",
        "latitude": 45.8845944435143,
        "longitude": -122.000085547702,
        "metadata-url": "https://api.weather.gov/points/45.8846,-122.0001",
        "trailhead": "Soda Peaks Lake",
        "gridX": 138,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/138,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Carson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/172,112/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7098,-121.1452",
        "gridId": "SEW",
        "latitude": 48.7097941921022,
        "longitude": -121.145185027602,
        "metadata-url": "https://api.weather.gov/points/48.7098,-121.1452",
        "trailhead": "Pyramid Lake",
        "gridX": 172,
        "gridY": 112,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/172,112/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Marblemount"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/62,171/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.8807,-121.278",
        "gridId": "PDT",
        "latitude": 46.8806999996634,
        "longitude": -121.277999999938,
        "metadata-url": "https://api.weather.gov/points/46.8807,-121.278",
        "trailhead": "Ruby Creek ORV Trailhead",
        "gridX": 62,
        "gridY": 171,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/62,171/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KATX",
        "city": "Cliffdell"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/143,126/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1022,-121.905",
        "gridId": "PQR",
        "latitude": 46.1021799987752,
        "longitude": -121.904969999642,
        "metadata-url": "https://api.weather.gov/points/46.1022,-121.905",
        "trailhead": "Trailhead: Speed",
        "gridX": 143,
        "gridY": 126,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/143,126/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/82,71/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4788,-123.6342",
        "gridId": "SEW",
        "latitude": 47.4788019988337,
        "longitude": -123.634173000397,
        "metadata-url": "https://api.weather.gov/points/47.4788,-123.6342",
        "trailhead": "Upper West Fork Humptulips Trailhead",
        "gridX": 82,
        "gridY": 71,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/82,71/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Neilton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/52,153/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5984,-120.5134",
        "gridId": "OTX",
        "latitude": 48.5983799986326,
        "longitude": -120.51340999992,
        "metadata-url": "https://api.weather.gov/points/48.5984,-120.5134",
        "trailhead": "Driveway Butte Trailhead",
        "gridX": 52,
        "gridY": 153,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/52,153/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/74,176/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.0345,-120.954",
        "gridId": "PDT",
        "latitude": 47.0344999994633,
        "longitude": -120.95400000013,
        "metadata-url": "https://api.weather.gov/points/47.0345,-120.954",
        "trailhead": "Manastash Camp/Trailhead",
        "gridX": 74,
        "gridY": 176,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/74,176/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Cliffdell"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/28,117/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7846,-121.029",
        "gridId": "OTX",
        "latitude": 47.7845999998202,
        "longitude": -121.02900000102,
        "metadata-url": "https://api.weather.gov/points/47.7846,-121.029",
        "trailhead": "Bygone Byways Trailhead",
        "gridX": 28,
        "gridY": 117,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/28,117/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/152,114/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6541,-121.7844",
        "gridId": "SEW",
        "latitude": 48.6540829997429,
        "longitude": -121.784411000149,
        "metadata-url": "https://api.weather.gov/points/48.6541,-121.7844",
        "trailhead": "Blue Lake/Dock Butte Trailhead",
        "gridX": 152,
        "gridY": 114,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/152,114/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Concrete"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/150,133/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2756,-121.7435",
        "gridId": "PQR",
        "latitude": 46.2755943931856,
        "longitude": -121.743485504838,
        "metadata-url": "https://api.weather.gov/points/46.2756,-121.7435",
        "trailhead": "Dark Meadow",
        "gridX": 150,
        "gridY": 133,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/150,133/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/187,110/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7216,-120.6692",
        "gridId": "SEW",
        "latitude": 48.7215569983096,
        "longitude": -120.669217000188,
        "metadata-url": "https://api.weather.gov/points/48.7216,-120.6692",
        "trailhead": "Hart's Pass Trailhead",
        "gridX": 187,
        "gridY": 110,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/187,110/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/129,112/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.7721,-122.243",
        "gridId": "PQR",
        "latitude": 45.7721499993947,
        "longitude": -122.242968000337,
        "metadata-url": "https://api.weather.gov/points/45.7721,-122.243",
        "trailhead": "Trailhead: Silver Star",
        "gridX": 129,
        "gridY": 112,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/129,112/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ040",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Yacolt"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/45,123/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9585999,-120.5355",
        "gridId": "OTX",
        "latitude": 47.9585789991006,
        "longitude": -120.535456000306,
        "metadata-url": "https://api.weather.gov/points/47.9586,-120.5355",
        "trailhead": "Silver Falls Trailhead",
        "gridX": 45,
        "gridY": 123,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/45,123/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/149,60/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5477,-121.5371",
        "gridId": "SEW",
        "latitude": 47.5477489991155,
        "longitude": -121.53707599954,
        "metadata-url": "https://api.weather.gov/points/47.5477,-121.5371",
        "trailhead": "Middle Fork Snoqualmie Trailhead",
        "gridX": 149,
        "gridY": 60,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/149,60/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Tanner"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/142,26/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.8018,-121.5551",
        "gridId": "SEW",
        "latitude": 46.8017943425637,
        "longitude": -121.555085419586,
        "metadata-url": "https://api.weather.gov/points/46.8018,-121.5551",
        "trailhead": "Shriner Peak",
        "gridX": 142,
        "gridY": 26,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/142,26/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/89,96/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0272999,-123.5894",
        "gridId": "SEW",
        "latitude": 48.0272945013131,
        "longitude": -123.589384805281,
        "metadata-url": "https://api.weather.gov/points/48.0273,-123.5894",
        "trailhead": "Cascade Rock",
        "gridX": 89,
        "gridY": 96,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/89,96/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/44,91/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.2941999,-120.3983",
        "gridId": "OTX",
        "latitude": 47.2942499989764,
        "longitude": -120.398277000886,
        "metadata-url": "https://api.weather.gov/points/47.2942,-120.3983",
        "trailhead": "Squilchuck Trailhead",
        "gridX": 44,
        "gridY": 91,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/44,91/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "South Wenatchee"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/68,195/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4176,-121.2373",
        "gridId": "PDT",
        "latitude": 47.4175942737203,
        "longitude": -121.237285330078,
        "metadata-url": "https://api.weather.gov/points/47.4176,-121.2373",
        "trailhead": "Mineral Creek",
        "gridX": 68,
        "gridY": 195,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/68,195/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/149,53/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3977999,-121.4864",
        "gridId": "SEW",
        "latitude": 47.3978099991393,
        "longitude": -121.486419000522,
        "metadata-url": "https://api.weather.gov/points/47.3978,-121.4864",
        "trailhead": "Pratt Lake Trailhead",
        "gridX": 149,
        "gridY": 53,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/149,53/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/52,127/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0736,-120.3467",
        "gridId": "OTX",
        "latitude": 48.0736059987167,
        "longitude": -120.346662999537,
        "metadata-url": "https://api.weather.gov/points/48.0736,-120.3467",
        "trailhead": "Safety Harbor Creek Trailhead",
        "gridX": 52,
        "gridY": 127,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/52,127/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/45,125/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0111,-120.5722",
        "gridId": "OTX",
        "latitude": 48.0110929985439,
        "longitude": -120.572169999502,
        "metadata-url": "https://api.weather.gov/points/48.0111,-120.5722",
        "trailhead": "North Fork Entiat Trailhead",
        "gridX": 45,
        "gridY": 125,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/45,125/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/130,21/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.6666,-121.89",
        "gridId": "SEW",
        "latitude": 46.6666309995671,
        "longitude": -121.889974000075,
        "metadata-url": "https://api.weather.gov/points/46.6666,-121.89",
        "trailhead": "Trailhead: High Rock/Greenwood Lake",
        "gridX": 130,
        "gridY": 21,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/130,21/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Ashford"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/83,64/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3547,-123.567",
        "gridId": "SEW",
        "latitude": 47.3547409984579,
        "longitude": -123.567013999673,
        "metadata-url": "https://api.weather.gov/points/47.3547,-123.567",
        "trailhead": "Spoon Creek Falls Trailhead",
        "gridX": 83,
        "gridY": 64,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/83,64/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Neilton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/150,121/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.8016999,-121.8957",
        "gridId": "SEW",
        "latitude": 48.8016659986211,
        "longitude": -121.89574800011,
        "metadata-url": "https://api.weather.gov/points/48.8017,-121.8957",
        "trailhead": "Heliotrope Ridge Trailhead",
        "gridX": 150,
        "gridY": 121,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/150,121/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      },
      {
        "id": "https://api.weather.gov/points/48.8021,-121.8957",
        "gridId": "SEW",
        "latitude": 48.802093999325,
        "longitude": -121.895722000481,
        "metadata-url": "https://api.weather.gov/points/48.8021,-121.8957",
        "trailhead": "North Ridge Climbing Route",
        "gridX": 150,
        "gridY": 121,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/150,121/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      },
      {
        "id": "https://api.weather.gov/points/48.8023,-121.8956",
        "gridId": "SEW",
        "latitude": 48.8022559994636,
        "longitude": -121.89563900029,
        "metadata-url": "https://api.weather.gov/points/48.8023,-121.8956",
        "trailhead": "Coleman Glacier Climbing Route",
        "gridX": 150,
        "gridY": 121,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/150,121/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/60,160/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7844,-120.3179",
        "gridId": "OTX",
        "latitude": 48.7843599993212,
        "longitude": -120.317890000514,
        "metadata-url": "https://api.weather.gov/points/48.7844,-120.3179",
        "trailhead": "Billy Goat Trailhead",
        "gridX": 60,
        "gridY": 160,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/60,160/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/147,124/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0917,-121.765",
        "gridId": "PQR",
        "latitude": 46.0916679986879,
        "longitude": -121.764973000067,
        "metadata-url": "https://api.weather.gov/points/46.0917,-121.765",
        "trailhead": "Trailhead: Sawtooth",
        "gridX": 147,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/147,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      },
      {
        "id": "https://api.weather.gov/points/46.087,-121.7612",
        "gridId": "PQR",
        "latitude": 46.0870099989142,
        "longitude": -121.76117999966,
        "metadata-url": "https://api.weather.gov/points/46.087,-121.7612",
        "trailhead": "Interpretive Site: Berry Fields",
        "gridX": 147,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/147,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/145,86/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0698,-121.8151",
        "gridId": "SEW",
        "latitude": 48.0697859992677,
        "longitude": -121.815126000148,
        "metadata-url": "https://api.weather.gov/points/48.0698,-121.8151",
        "trailhead": "Mount Pilchuck Trailhead",
        "gridX": 145,
        "gridY": 86,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/145,86/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Verlot"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/47,98/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4601,-120.3305",
        "gridId": "OTX",
        "latitude": 47.4600941731089,
        "longitude": -120.330485473258,
        "metadata-url": "https://api.weather.gov/points/47.4601,-120.3305",
        "trailhead": "Horan Natural Area",
        "gridX": 47,
        "gridY": 98,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/47,98/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ041",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Sunnyslope"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/108,69/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5521,-122.8276",
        "gridId": "SEW",
        "latitude": 47.5520944397233,
        "longitude": -122.827585040964,
        "metadata-url": "https://api.weather.gov/points/47.5521,-122.8276",
        "trailhead": "Gold Creek Trail",
        "gridX": 108,
        "gridY": 69,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/108,69/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ511",
        "county": "https://api.weather.gov/zones/county/WAC035",
        "radarStation": "KATX",
        "city": "Bremerton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/140,8/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.4233,-121.501",
        "gridId": "SEW",
        "latitude": 46.4232559996026,
        "longitude": -121.50103500074,
        "metadata-url": "https://api.weather.gov/points/46.4233,-121.501",
        "trailhead": "Trailhead: Coleman Weedpatch",
        "gridX": 140,
        "gridY": 8,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/140,8/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/74,201/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5448,-121.0977",
        "gridId": "PDT",
        "latitude": 47.5447671706502,
        "longitude": -121.097686105179,
        "metadata-url": "https://api.weather.gov/points/47.5448,-121.0977",
        "trailhead": "Tucquala Meadows Trailhead",
        "gridX": 74,
        "gridY": 201,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/74,201/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/84,189/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3543,-120.7184",
        "gridId": "PDT",
        "latitude": 47.3542942209485,
        "longitude": -120.7183854319,
        "metadata-url": "https://api.weather.gov/points/47.3543,-120.7184",
        "trailhead": "Teanaway Ridge",
        "gridX": 84,
        "gridY": 189,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/84,189/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Cle Elum"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/154,100/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8851,-117.0833",
        "gridId": "OTX",
        "latitude": 47.8850937983137,
        "longitude": -117.083285957685,
        "metadata-url": "https://api.weather.gov/points/47.8851,-117.0833",
        "trailhead": "Mount Spokane State Park - Quartz Mountain",
        "gridX": 154,
        "gridY": 100,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/154,100/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC063",
        "radarStation": "KOTX",
        "city": "Hauser"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/137,119/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.9495,-122.0381",
        "gridId": "PQR",
        "latitude": 45.9495479993505,
        "longitude": -122.038052999367,
        "metadata-url": "https://api.weather.gov/points/45.9495,-122.0381",
        "trailhead": "Trailhead: Observation Peak",
        "gridX": 137,
        "gridY": 119,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/137,119/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Carson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/79,48/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.9973,-123.594",
        "gridId": "SEW",
        "latitude": 46.9972945515787,
        "longitude": -123.593985053202,
        "metadata-url": "https://api.weather.gov/points/46.9973,-123.594",
        "trailhead": "Lake Sylvia State Park",
        "gridX": 79,
        "gridY": 48,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/79,48/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ512",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Montesano"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/74,102/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0805999,-124.079",
        "gridId": "SEW",
        "latitude": 48.0806339982417,
        "longitude": -124.078972000702,
        "metadata-url": "https://api.weather.gov/points/48.0806,-124.079",
        "trailhead": "Kloshe Nanitch Lookout Observation Site",
        "gridX": 74,
        "gridY": 102,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/74,102/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Clallam Bay"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/131,119/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0678,-118.9027",
        "gridId": "PDT",
        "latitude": 46.0677941131698,
        "longitude": -118.902686029621,
        "metadata-url": "https://api.weather.gov/points/46.0678,-118.9027",
        "trailhead": "Wallula Habitat Management Unit",
        "gridX": 131,
        "gridY": 119,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/131,119/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ028",
        "county": "https://api.weather.gov/zones/county/WAC071",
        "radarStation": "KPDT",
        "city": "Wallula"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/124,132/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.9069,-122.766",
        "gridId": "SEW",
        "latitude": 48.9068943661492,
        "longitude": -122.765984710436,
        "metadata-url": "https://api.weather.gov/points/48.9069,-122.766",
        "trailhead": "Birch Bay State Park",
        "gridX": 124,
        "gridY": 132,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/124,132/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ503",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Birch Bay"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/72,80/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6245,-124.0144",
        "gridId": "SEW",
        "latitude": 47.6245492606087,
        "longitude": -124.014389241174,
        "metadata-url": "https://api.weather.gov/points/47.6245,-124.0144",
        "trailhead": "Queets",
        "gridX": 72,
        "gridY": 80,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/72,80/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ516",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KLGX",
        "city": "Amanda Park"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/29,123/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8953,-121.036",
        "gridId": "OTX",
        "latitude": 47.8952999986171,
        "longitude": -121.036000000447,
        "metadata-url": "https://api.weather.gov/points/47.8953,-121.036",
        "trailhead": "Irving Pass Trailhead",
        "gridX": 29,
        "gridY": 123,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/29,123/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/92,70/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5161,-123.3276",
        "gridId": "SEW",
        "latitude": 47.5160944965066,
        "longitude": -123.327584970954,
        "metadata-url": "https://api.weather.gov/points/47.5161,-123.3276",
        "trailhead": "Wagonwheel Lake",
        "gridX": 92,
        "gridY": 70,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/92,70/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      },
      {
        "id": "https://api.weather.gov/points/47.5158,-123.33",
        "gridId": "SEW",
        "latitude": 47.5157944971022,
        "longitude": -123.329984970427,
        "metadata-url": "https://api.weather.gov/points/47.5158,-123.33",
        "trailhead": "Staircase Rapids",
        "gridX": 92,
        "gridY": 70,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/92,70/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      },
      {
        "id": "https://api.weather.gov/points/47.5056,-123.327",
        "gridId": "SEW",
        "latitude": 47.5055709991012,
        "longitude": -123.327013999841,
        "metadata-url": "https://api.weather.gov/points/47.5056,-123.327",
        "trailhead": "Copper Creek Trailhead",
        "gridX": 92,
        "gridY": 70,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/92,70/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      },
      {
        "id": "https://api.weather.gov/points/47.5016,-123.3194",
        "gridId": "SEW",
        "latitude": 47.5016469989465,
        "longitude": -123.319448999775,
        "metadata-url": "https://api.weather.gov/points/47.5016,-123.3194",
        "trailhead": "Dry Creek East Trailhead",
        "gridX": 92,
        "gridY": 70,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/92,70/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/125,23/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1867,-117.5605",
        "gridId": "OTX",
        "latitude": 46.1866749997628,
        "longitude": -117.560534000293,
        "metadata-url": "https://api.weather.gov/points/46.1867,-117.5605",
        "trailhead": "Hunter Spring Trailhead",
        "gridX": 125,
        "gridY": 23,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/125,23/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ031",
        "county": "https://api.weather.gov/zones/county/WAC023",
        "radarStation": "KPDT",
        "city": "Pomeroy"
      },
      {
        "id": "https://api.weather.gov/points/46.2006,-117.5689",
        "gridId": "OTX",
        "latitude": 46.2006319989825,
        "longitude": -117.568865000247,
        "metadata-url": "https://api.weather.gov/points/46.2006,-117.5689",
        "trailhead": "Clearwater Big House Cabin",
        "gridX": 125,
        "gridY": 23,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/125,23/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ031",
        "county": "https://api.weather.gov/zones/county/WAC023",
        "radarStation": "KPDT",
        "city": "Pomeroy"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/88,187/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3314,-120.58",
        "gridId": "PDT",
        "latitude": 47.3313999990105,
        "longitude": -120.579999999748,
        "metadata-url": "https://api.weather.gov/points/47.3314,-120.58",
        "trailhead": "Swauk Discovery Trailhead Interpretive Site",
        "gridX": 88,
        "gridY": 187,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/88,187/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Wenatchee"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/148,124/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0933,-121.759",
        "gridId": "PQR",
        "latitude": 46.0933049991528,
        "longitude": -121.759005000613,
        "metadata-url": "https://api.weather.gov/points/46.0933,-121.759",
        "trailhead": "Trailhead: Middle Trail-Upper",
        "gridX": 148,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/148,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/161,67/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7295,-121.2068",
        "gridId": "SEW",
        "latitude": 47.7295369997089,
        "longitude": -121.206830000056,
        "metadata-url": "https://api.weather.gov/points/47.7295,-121.2068",
        "trailhead": "Iron Goat/Martin Creek Trailhead",
        "gridX": 161,
        "gridY": 67,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/161,67/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/131,122/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7329999,-122.4846",
        "gridId": "SEW",
        "latitude": 48.7329943425043,
        "longitude": -122.484584800888,
        "metadata-url": "https://api.weather.gov/points/48.733,-122.4846",
        "trailhead": "Sehome Arboretum",
        "gridX": 131,
        "gridY": 122,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/131,122/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ503",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Bellingham"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/92,92/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9682,-123.4815",
        "gridId": "SEW",
        "latitude": 47.9682414724086,
        "longitude": -123.481463286756,
        "metadata-url": "https://api.weather.gov/points/47.9682,-123.4815",
        "trailhead": "Cox Valley",
        "gridX": 92,
        "gridY": 92,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/92,92/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/132,133/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2022,-122.2677",
        "gridId": "PQR",
        "latitude": 46.2021944529015,
        "longitude": -122.267685437901,
        "metadata-url": "https://api.weather.gov/points/46.2022,-122.2677",
        "trailhead": "Sheep Canyon",
        "gridX": 132,
        "gridY": 133,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/132,133/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC015",
        "radarStation": "KRTX",
        "city": "Amboy"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/92,66/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4268,-123.3255",
        "gridId": "SEW",
        "latitude": 47.4268249983688,
        "longitude": -123.325490000216,
        "metadata-url": "https://api.weather.gov/points/47.4268,-123.3255",
        "trailhead": "Skokomish Lower South Fork via Lebar Trailhead",
        "gridX": 92,
        "gridY": 66,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/92,66/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/39,122/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9171,-120.7149",
        "gridId": "OTX",
        "latitude": 47.91709999959,
        "longitude": -120.714899999541,
        "metadata-url": "https://api.weather.gov/points/47.9171,-120.7149",
        "trailhead": "Chikamin ORV Trailhead",
        "gridX": 39,
        "gridY": 122,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/39,122/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/180,109/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6685,-120.8741",
        "gridId": "SEW",
        "latitude": 48.6684799983667,
        "longitude": -120.874079999589,
        "metadata-url": "https://api.weather.gov/points/48.6685,-120.8741",
        "trailhead": "East Creek Trailhead",
        "gridX": 180,
        "gridY": 109,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/180,109/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Marblemount"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/148,126/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1258,-121.7524",
        "gridId": "PQR",
        "latitude": 46.1257939985618,
        "longitude": -121.752412000763,
        "metadata-url": "https://api.weather.gov/points/46.1258,-121.7524",
        "trailhead": "Trailhead: Mosquito-PCNST #2000",
        "gridX": 148,
        "gridY": 126,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/148,126/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/132,56/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3799,-122.0403",
        "gridId": "SEW",
        "latitude": 47.3798943624311,
        "longitude": -122.040285207522,
        "metadata-url": "https://api.weather.gov/points/47.3799,-122.0403",
        "trailhead": "Lake Wilderness Park",
        "gridX": 132,
        "gridY": 56,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/132,56/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Maple Valley"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/33,117/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7905,-120.885",
        "gridId": "OTX",
        "latitude": 47.7904999985313,
        "longitude": -120.884999999912,
        "metadata-url": "https://api.weather.gov/points/47.7905,-120.885",
        "trailhead": "Merritt Lake Trailhead",
        "gridX": 33,
        "gridY": 117,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/33,117/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/141,30/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.8884,-121.611",
        "gridId": "SEW",
        "latitude": 46.8883943439936,
        "longitude": -121.610985390205,
        "metadata-url": "https://api.weather.gov/points/46.8884,-121.611",
        "trailhead": "Summerland - Panhandle Gap",
        "gridX": 141,
        "gridY": 30,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/141,30/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      },
      {
        "id": "https://api.weather.gov/points/46.8905,-121.5968",
        "gridId": "SEW",
        "latitude": 46.890494342528,
        "longitude": -121.596785392885,
        "metadata-url": "https://api.weather.gov/points/46.8905,-121.5968",
        "trailhead": "Owyhigh Lakes",
        "gridX": 141,
        "gridY": 30,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/141,30/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/73,179/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.0959,-120.994",
        "gridId": "PDT",
        "latitude": 47.0958999983323,
        "longitude": -120.994000000482,
        "metadata-url": "https://api.weather.gov/points/47.0959,-120.994",
        "trailhead": "South Fork Meadow Trailhead",
        "gridX": 73,
        "gridY": 179,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/73,179/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "South Cle Elum"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/162,93/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.2697,-121.3499",
        "gridId": "SEW",
        "latitude": 48.2697259991887,
        "longitude": -121.34990999985,
        "metadata-url": "https://api.weather.gov/points/48.2697,-121.3499",
        "trailhead": "Huckleberry Mountain Trailhead",
        "gridX": 162,
        "gridY": 93,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/162,93/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/150,117/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7164,-121.8564",
        "gridId": "SEW",
        "latitude": 48.7164129986279,
        "longitude": -121.856446000106,
        "metadata-url": "https://api.weather.gov/points/48.7164,-121.8564",
        "trailhead": "Park Butte Lookout",
        "gridX": 150,
        "gridY": 117,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/150,117/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/59,153/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.5072,-121.283",
        "gridId": "PDT",
        "latitude": 46.5071999982348,
        "longitude": -121.28299999978,
        "metadata-url": "https://api.weather.gov/points/46.5072,-121.283",
        "trailhead": "Conrad Meadows Trailhead",
        "gridX": 59,
        "gridY": 153,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/59,153/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Tampico"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/133,136/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2874,-122.2708",
        "gridId": "PQR",
        "latitude": 46.2873619994866,
        "longitude": -122.270767999261,
        "metadata-url": "https://api.weather.gov/points/46.2874,-122.2708",
        "trailhead": "Hummocks/Boundary Trailhead",
        "gridX": 133,
        "gridY": 136,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/133,136/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC015",
        "radarStation": "KRTX",
        "city": "Morton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/137,138/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.3305999,-122.146",
        "gridId": "PQR",
        "latitude": 46.3305999996019,
        "longitude": -122.146000000589,
        "metadata-url": "https://api.weather.gov/points/46.3306,-122.146",
        "trailhead": "Mount Margaret Backcountry",
        "gridX": 137,
        "gridY": 138,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/137,138/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Morton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/143,135/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2893,-121.9683",
        "gridId": "PQR",
        "latitude": 46.2893359999471,
        "longitude": -121.968251000585,
        "metadata-url": "https://api.weather.gov/points/46.2893,-121.9683",
        "trailhead": "Trailhead: Elk Pass/Boundary Trail",
        "gridX": 143,
        "gridY": 135,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/143,135/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Morton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/152,126/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.9122,-121.8567",
        "gridId": "SEW",
        "latitude": 48.9122219988353,
        "longitude": -121.856666999789,
        "metadata-url": "https://api.weather.gov/points/48.9122,-121.8567",
        "trailhead": "Church Mountain Trailhead",
        "gridX": 152,
        "gridY": 126,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/152,126/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/138,67/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6442,-121.9269",
        "gridId": "SEW",
        "latitude": 47.644194335777,
        "longitude": -121.926885162662,
        "metadata-url": "https://api.weather.gov/points/47.6442,-121.9269",
        "trailhead": "Tolt - MacDonald Park",
        "gridX": 138,
        "gridY": 67,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/138,67/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Carnation"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/92,158/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.8596999,-119.3059",
        "gridId": "OTX",
        "latitude": 48.8597459987609,
        "longitude": -119.305944000729,
        "metadata-url": "https://api.weather.gov/points/48.8597,-119.3059",
        "trailhead": "Wilcox Trailhead",
        "gridX": 92,
        "gridY": 158,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/92,158/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KOTX",
        "city": "Oroville"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/146,54/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4117,-121.5887",
        "gridId": "SEW",
        "latitude": 47.4116959984094,
        "longitude": -121.588685999665,
        "metadata-url": "https://api.weather.gov/points/47.4117,-121.5887",
        "trailhead": "McClellan Butte Trailhead",
        "gridX": 146,
        "gridY": 54,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/146,54/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Tanner"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/69,160/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.8230999,-120.0195",
        "gridId": "OTX",
        "latitude": 48.8231089986273,
        "longitude": -120.019466000303,
        "metadata-url": "https://api.weather.gov/points/48.8231,-120.0195",
        "trailhead": "Thirty Mile Trailhead",
        "gridX": 69,
        "gridY": 160,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/69,160/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Loomis"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/148,115/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.9054,-121.7033",
        "gridId": "PQR",
        "latitude": 45.9054069989389,
        "longitude": -121.703345999935,
        "metadata-url": "https://api.weather.gov/points/45.9054,-121.7033",
        "trailhead": "Trailhead: Little Huckleberry",
        "gridX": 148,
        "gridY": 115,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/148,115/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/50,146/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.3258,-121.5047",
        "gridId": "PDT",
        "latitude": 46.3258189994095,
        "longitude": -121.504739000234,
        "metadata-url": "https://api.weather.gov/points/46.3258,-121.5047",
        "trailhead": "Trailhead: Potato Hill - Pacific Crest Trail #2000",
        "gridX": 50,
        "gridY": 146,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/50,146/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/140,31/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.9146,-121.6423",
        "gridId": "SEW",
        "latitude": 46.9145943453008,
        "longitude": -121.642285379791,
        "metadata-url": "https://api.weather.gov/points/46.9146,-121.6423",
        "trailhead": "Shadow Lake-Sunrise Camp Loop",
        "gridX": 140,
        "gridY": 31,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/140,31/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      },
      {
        "id": "https://api.weather.gov/points/46.9021,-121.6437",
        "gridId": "SEW",
        "latitude": 46.9020943468173,
        "longitude": -121.643685382531,
        "metadata-url": "https://api.weather.gov/points/46.9021,-121.6437",
        "trailhead": "Glacier Basin",
        "gridX": 140,
        "gridY": 31,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/140,31/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/138,130/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1655,-122.0911",
        "gridId": "PQR",
        "latitude": 46.1655259992972,
        "longitude": -122.091050000912,
        "metadata-url": "https://api.weather.gov/points/46.1655,-122.0911",
        "trailhead": "Ape Canyon Trailhead",
        "gridX": 138,
        "gridY": 130,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/138,130/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Yacolt"
      },
      {
        "id": "https://api.weather.gov/points/46.1659999,-122.0871",
        "gridId": "PQR",
        "latitude": 46.1659979989564,
        "longitude": -122.087105000697,
        "metadata-url": "https://api.weather.gov/points/46.166,-122.0871",
        "trailhead": "Lava Canyon Interpretive Site",
        "gridX": 138,
        "gridY": 130,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/138,130/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Yacolt"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/56,154/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6515,-120.402",
        "gridId": "OTX",
        "latitude": 48.651458998621,
        "longitude": -120.401970999287,
        "metadata-url": "https://api.weather.gov/points/48.6515,-120.402",
        "trailhead": "Goat Peak Trailhead",
        "gridX": 56,
        "gridY": 154,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/56,154/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/147,119/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.9804,-121.7587",
        "gridId": "PQR",
        "latitude": 45.9804109991794,
        "longitude": -121.758660999913,
        "metadata-url": "https://api.weather.gov/points/45.9804,-121.7587",
        "trailhead": "Trailhead: East Crater",
        "gridX": 147,
        "gridY": 119,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/147,119/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/60,89/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7493,-124.4188",
        "gridId": "SEW",
        "latitude": 47.7493130788776,
        "longitude": -124.418759376679,
        "metadata-url": "https://api.weather.gov/points/47.7493,-124.4188",
        "trailhead": "Oil City (Hoh River Mouth)",
        "gridX": 60,
        "gridY": 89,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/60,89/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ516",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KLGX",
        "city": "Forks"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/175,113/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7274,-121.0628",
        "gridId": "SEW",
        "latitude": 48.7273941823709,
        "longitude": -121.062785037798,
        "metadata-url": "https://api.weather.gov/points/48.7274,-121.0628",
        "trailhead": "Happy Creek Nature Trail",
        "gridX": 175,
        "gridY": 113,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/175,113/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Marblemount"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/60,138/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.3242,-120.1845",
        "gridId": "OTX",
        "latitude": 48.3241799990121,
        "longitude": -120.184490000628,
        "metadata-url": "https://api.weather.gov/points/48.3242,-120.1845",
        "trailhead": "Lookout Mountain Trailhead",
        "gridX": 60,
        "gridY": 138,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/60,138/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Twisp"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/143,27/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.8335,-121.5351",
        "gridId": "SEW",
        "latitude": 46.8334943389733,
        "longitude": -121.535085415219,
        "metadata-url": "https://api.weather.gov/points/46.8335,-121.5351",
        "trailhead": "Deer Creek Falls to Owyhigh Lakes",
        "gridX": 143,
        "gridY": 27,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/143,27/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/167,114/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0997,-117.7863",
        "gridId": "PDT",
        "latitude": 46.0997179993076,
        "longitude": -117.786290999289,
        "metadata-url": "https://api.weather.gov/points/46.0997,-117.7863",
        "trailhead": "Godman Campground/Trailhead",
        "gridX": 167,
        "gridY": 114,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/167,114/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ030",
        "county": "https://api.weather.gov/zones/county/WAC013",
        "radarStation": "KPDT",
        "city": "Dixie"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/87,94/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9869,-123.6518",
        "gridId": "SEW",
        "latitude": 47.986866346202,
        "longitude": -123.651812573785,
        "metadata-url": "https://api.weather.gov/points/47.9869,-123.6518",
        "trailhead": "Boulder Creek",
        "gridX": 87,
        "gridY": 94,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/87,94/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/137,129/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1544,-122.1035",
        "gridId": "PQR",
        "latitude": 46.1543944383017,
        "longitude": -122.103485473252,
        "metadata-url": "https://api.weather.gov/points/46.1544,-122.1035",
        "trailhead": "Jackpine Shelter",
        "gridX": 137,
        "gridY": 129,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/137,129/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Yacolt"
      },
      {
        "id": "https://api.weather.gov/points/46.1594,-122.0941",
        "gridId": "PQR",
        "latitude": 46.1594299995925,
        "longitude": -122.094102999851,
        "metadata-url": "https://api.weather.gov/points/46.1594,-122.0941",
        "trailhead": "Lahar Viewpoint Interpretive Site",
        "gridX": 137,
        "gridY": 129,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/137,129/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Yacolt"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/76,90/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8536,-123.9512",
        "gridId": "SEW",
        "latitude": 47.8535945492655,
        "longitude": -123.951184793269,
        "metadata-url": "https://api.weather.gov/points/47.8536,-123.9512",
        "trailhead": "Hoh River - Elk Lake",
        "gridX": 76,
        "gridY": 90,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/76,90/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KLGX",
        "city": "Forks"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/138,134/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2583,-122.1155",
        "gridId": "PQR",
        "latitude": 46.2583259991604,
        "longitude": -122.115512000763,
        "metadata-url": "https://api.weather.gov/points/46.2583,-122.1155",
        "trailhead": "Smith Creek Trailhead (Road 99)",
        "gridX": 138,
        "gridY": 134,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/138,134/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Morton"
      },
      {
        "id": "https://api.weather.gov/points/46.2527,-122.1174",
        "gridId": "PQR",
        "latitude": 46.252749999099,
        "longitude": -122.117380000363,
        "metadata-url": "https://api.weather.gov/points/46.2527,-122.1174",
        "trailhead": "Smith Creek Picnic/Viewpoint",
        "gridX": 138,
        "gridY": 134,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/138,134/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Morton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/152,55/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4455,-121.4234",
        "gridId": "SEW",
        "latitude": 47.44549299836,
        "longitude": -121.42336300013,
        "metadata-url": "https://api.weather.gov/points/47.4455,-121.4234",
        "trailhead": "Snow Lake Trailhead",
        "gridX": 152,
        "gridY": 55,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/152,55/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/148,92/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.1937,-121.7716",
        "gridId": "SEW",
        "latitude": 48.1936942893897,
        "longitude": -121.77158505378,
        "metadata-url": "https://api.weather.gov/points/48.1937,-121.7716",
        "trailhead": "Tin Can Gap",
        "gridX": 148,
        "gridY": 92,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/148,92/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Verlot"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/49,146/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4584,-120.5673",
        "gridId": "OTX",
        "latitude": 48.4583679985388,
        "longitude": -120.567312000179,
        "metadata-url": "https://api.weather.gov/points/48.4584,-120.5673",
        "trailhead": "Gilbert Trailhead",
        "gridX": 49,
        "gridY": 146,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/49,146/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/161,85/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0933,-121.3352",
        "gridId": "SEW",
        "latitude": 48.0933299985512,
        "longitude": -121.335238999979,
        "metadata-url": "https://api.weather.gov/points/48.0933,-121.3352",
        "trailhead": "Lost Creek Ridge Trailhead",
        "gridX": 161,
        "gridY": 85,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/161,85/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/163,66/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7108,-121.1587",
        "gridId": "SEW",
        "latitude": 47.7107942483301,
        "longitude": -121.158685272909,
        "metadata-url": "https://api.weather.gov/points/47.7108,-121.1587",
        "trailhead": "Surprise Creek",
        "gridX": 163,
        "gridY": 66,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/163,66/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/110,139/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5433,-118.6353",
        "gridId": "OTX",
        "latitude": 48.5433339987733,
        "longitude": -118.635336000918,
        "metadata-url": "https://api.weather.gov/points/48.5433,-118.6353",
        "trailhead": "Nine Mile Falls Trailhead",
        "gridX": 110,
        "gridY": 139,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/110,139/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC019",
        "radarStation": "KOTX",
        "city": "Pine Grove"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/146,106/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.6993,-121.7066",
        "gridId": "PQR",
        "latitude": 45.6992944243835,
        "longitude": -121.706585634445,
        "metadata-url": "https://api.weather.gov/points/45.6993,-121.7066",
        "trailhead": "Dog Mountain",
        "gridX": 146,
        "gridY": 106,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/146,106/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ046",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Carson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/162,83/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0578999,-121.2882",
        "gridId": "SEW",
        "latitude": 48.05791699922,
        "longitude": -121.288219999866,
        "metadata-url": "https://api.weather.gov/points/48.0579,-121.2882",
        "trailhead": "North Fork Sauk Trailhead",
        "gridX": 162,
        "gridY": 83,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/162,83/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/64,162/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.7147999,-121.166",
        "gridId": "PDT",
        "latitude": 46.7147999995612,
        "longitude": -121.166000001031,
        "metadata-url": "https://api.weather.gov/points/46.7148,-121.166",
        "trailhead": "Cash Prairie Trailhead",
        "gridX": 64,
        "gridY": 162,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/64,162/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Nile"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/122,107/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4007999,-122.662",
        "gridId": "SEW",
        "latitude": 48.4007943784424,
        "longitude": -122.661984857173,
        "metadata-url": "https://api.weather.gov/points/48.4008,-122.662",
        "trailhead": "Deception Pass State Park - North Beach",
        "gridX": 122,
        "gridY": 107,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/122,107/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ510",
        "county": "https://api.weather.gov/zones/county/WAC029",
        "radarStation": "KATX",
        "city": "Whidbey Island Station"
      },
      {
        "id": "https://api.weather.gov/points/48.4034,-122.6475",
        "gridId": "SEW",
        "latitude": 48.4033943767183,
        "longitude": -122.647484859747,
        "metadata-url": "https://api.weather.gov/points/48.4034,-122.6475",
        "trailhead": "Goose Rock",
        "gridX": 122,
        "gridY": 107,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/122,107/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ510",
        "county": "https://api.weather.gov/zones/county/WAC029",
        "radarStation": "KATX",
        "city": "Whidbey Island Station"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/158,124/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.894,-121.6526",
        "gridId": "SEW",
        "latitude": 48.8940389991931,
        "longitude": -121.652566000175,
        "metadata-url": "https://api.weather.gov/points/48.894,-121.6526",
        "trailhead": "Nooksack Cirque Trailhead",
        "gridX": 158,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/158,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      },
      {
        "id": "https://api.weather.gov/points/48.8976,-121.6467",
        "gridId": "SEW",
        "latitude": 48.8975829986912,
        "longitude": -121.646707999494,
        "metadata-url": "https://api.weather.gov/points/48.8976,-121.6467",
        "trailhead": "Goat Mountain Trailhead",
        "gridX": 158,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/158,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/88,69/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4593,-123.4549",
        "gridId": "SEW",
        "latitude": 47.4593427189437,
        "longitude": -123.454905259153,
        "metadata-url": "https://api.weather.gov/points/47.4593,-123.4549",
        "trailhead": "Church Creek Shelter Trailhead",
        "gridX": 88,
        "gridY": 69,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/88,69/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      },
      {
        "id": "https://api.weather.gov/points/47.4793,-123.4521",
        "gridId": "SEW",
        "latitude": 47.4793219987638,
        "longitude": -123.452095000695,
        "metadata-url": "https://api.weather.gov/points/47.4793,-123.4521",
        "trailhead": "Skokomish Upper/Lower South Fork Trailhead",
        "gridX": 88,
        "gridY": 69,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/88,69/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/141,56/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4335,-121.7675",
        "gridId": "SEW",
        "latitude": 47.4334943304977,
        "longitude": -121.76748523871,
        "metadata-url": "https://api.weather.gov/points/47.4335,-121.7675",
        "trailhead": "Rattlesnake Ledge",
        "gridX": 141,
        "gridY": 56,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/141,56/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Wilderness Rim"
      },
      {
        "id": "https://api.weather.gov/points/47.4354,-121.7719",
        "gridId": "SEW",
        "latitude": 47.4353943300488,
        "longitude": -121.771885238018,
        "metadata-url": "https://api.weather.gov/points/47.4354,-121.7719",
        "trailhead": "East Peak-Rattlesnake Trail",
        "gridX": 141,
        "gridY": 56,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/141,56/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Wilderness Rim"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/155,113/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6456,-121.6748",
        "gridId": "SEW",
        "latitude": 48.645623998372,
        "longitude": -121.674781999595,
        "metadata-url": "https://api.weather.gov/points/48.6456,-121.6748",
        "trailhead": "Baker Lake Trailhead",
        "gridX": 155,
        "gridY": 113,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/155,113/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Concrete"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/143,18/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.656,-121.4851",
        "gridId": "SEW",
        "latitude": 46.6560239982064,
        "longitude": -121.485134999269,
        "metadata-url": "https://api.weather.gov/points/46.656,-121.4851",
        "trailhead": "Trailhead: Clear Fork",
        "gridX": 143,
        "gridY": 18,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/143,18/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/28,121/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8664,-121.076",
        "gridId": "OTX",
        "latitude": 47.8663999989597,
        "longitude": -121.076000000895,
        "metadata-url": "https://api.weather.gov/points/47.8664,-121.076",
        "trailhead": "Heather Lake Trailhead",
        "gridX": 28,
        "gridY": 121,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/28,121/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/135,136/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2756,-122.2161",
        "gridId": "PQR",
        "latitude": 46.2755539995744,
        "longitude": -122.216059999478,
        "metadata-url": "https://api.weather.gov/points/46.2756,-122.2161",
        "trailhead": "Johnston Ridge Observatory",
        "gridX": 135,
        "gridY": 136,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/135,136/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Morton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/85,75/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5726,-123.5699",
        "gridId": "SEW",
        "latitude": 47.5725945206834,
        "longitude": -123.569884920397,
        "metadata-url": "https://api.weather.gov/points/47.5726,-123.5699",
        "trailhead": "East Fork Quinault River",
        "gridX": 85,
        "gridY": 75,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/85,75/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KLGX",
        "city": "Amanda Park"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/78,195/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.437,-120.937",
        "gridId": "PDT",
        "latitude": 47.4369999984984,
        "longitude": -120.937000000429,
        "metadata-url": "https://api.weather.gov/points/47.437,-120.937",
        "trailhead": "Esmeralda Trailhead",
        "gridX": 78,
        "gridY": 195,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/78,195/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Ronald"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/58,165/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.752,-121.3615",
        "gridId": "PDT",
        "latitude": 46.7519943248731,
        "longitude": -121.361485462524,
        "metadata-url": "https://api.weather.gov/points/46.752,-121.3615",
        "trailhead": "Twin Sisters Lakes",
        "gridX": 58,
        "gridY": 165,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/58,165/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/114,137/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5055,-118.505",
        "gridId": "OTX",
        "latitude": 48.505501999717,
        "longitude": -118.504999000172,
        "metadata-url": "https://api.weather.gov/points/48.5055,-118.505",
        "trailhead": "Barnaby Butte Trailhead",
        "gridX": 114,
        "gridY": 137,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/114,137/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC019",
        "radarStation": "KOTX",
        "city": "Pine Grove"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/105,91/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9951999,-123.0849",
        "gridId": "SEW",
        "latitude": 47.9951989994887,
        "longitude": -123.084905000082,
        "metadata-url": "https://api.weather.gov/points/47.9952,-123.0849",
        "trailhead": "Louella Cabin",
        "gridX": 105,
        "gridY": 91,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/105,91/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Bell Hill"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/29,119/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.828,-121.0296",
        "gridId": "OTX",
        "latitude": 47.8280229997849,
        "longitude": -121.029596000194,
        "metadata-url": "https://api.weather.gov/points/47.828,-121.0296",
        "trailhead": "Lake Minotaur Trailhead",
        "gridX": 29,
        "gridY": 119,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/29,119/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/157,114/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.1903,-117.0533",
        "gridId": "OTX",
        "latitude": 48.1902779993178,
        "longitude": -117.053333000001,
        "metadata-url": "https://api.weather.gov/points/48.1903,-117.0533",
        "trailhead": "Upper Wolf Trailhead",
        "gridX": 157,
        "gridY": 114,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/157,114/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC051",
        "radarStation": "KOTX",
        "city": "Newport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/29,109/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6123,-120.95",
        "gridId": "OTX",
        "latitude": 47.6122999991546,
        "longitude": -120.950000000164,
        "metadata-url": "https://api.weather.gov/points/47.6123,-120.95",
        "trailhead": "Icicle Creek Trailhead",
        "gridX": 29,
        "gridY": 109,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/29,109/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      },
      {
        "id": "https://api.weather.gov/points/47.6091,-120.945",
        "gridId": "OTX",
        "latitude": 47.6090999990568,
        "longitude": -120.944999999862,
        "metadata-url": "https://api.weather.gov/points/47.6091,-120.945",
        "trailhead": "Blackpine Trailhead",
        "gridX": 29,
        "gridY": 109,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/29,109/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/34,123/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9203,-120.895",
        "gridId": "OTX",
        "latitude": 47.9202999986676,
        "longitude": -120.895000000087,
        "metadata-url": "https://api.weather.gov/points/47.9203,-120.895",
        "trailhead": "Twin Lakes Trailhead",
        "gridX": 34,
        "gridY": 123,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/34,123/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/135,105/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.638,-122.0318",
        "gridId": "PQR",
        "latitude": 45.6379944611166,
        "longitude": -122.031785595133,
        "metadata-url": "https://api.weather.gov/points/45.638,-122.0318",
        "trailhead": "Hardy Ridge",
        "gridX": 135,
        "gridY": 105,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/135,105/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ045",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "North Bonneville"
      },
      {
        "id": "https://api.weather.gov/points/45.6325,-122.02",
        "gridId": "PQR",
        "latitude": 45.6324944603328,
        "longitude": -122.019985597642,
        "metadata-url": "https://api.weather.gov/points/45.6325,-122.02",
        "trailhead": "Hamilton Mountain",
        "gridX": 135,
        "gridY": 105,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/135,105/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ045",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "North Bonneville"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/149,84/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0337,-121.6858",
        "gridId": "SEW",
        "latitude": 48.0336942889707,
        "longitude": -121.685785107478,
        "metadata-url": "https://api.weather.gov/points/48.0337,-121.6858",
        "trailhead": "Boardman Lake",
        "gridX": 149,
        "gridY": 84,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/149,84/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Verlot"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/51,155/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6497,-120.5647",
        "gridId": "OTX",
        "latitude": 48.6496699993868,
        "longitude": -120.564690000582,
        "metadata-url": "https://api.weather.gov/points/48.6497,-120.5647",
        "trailhead": "Rattlesnake Trailhead",
        "gridX": 51,
        "gridY": 155,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/51,155/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/120,147/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7424,-118.38",
        "gridId": "OTX",
        "latitude": 48.7423938828929,
        "longitude": -118.37998550779,
        "metadata-url": "https://api.weather.gov/points/48.7424,-118.38",
        "trailhead": "King Mountain",
        "gridX": 120,
        "gridY": 147,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/120,147/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC019",
        "radarStation": "KOTX",
        "city": "Malo"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/150,126/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1342,-121.6896",
        "gridId": "PQR",
        "latitude": 46.1342269990458,
        "longitude": -121.689569000164,
        "metadata-url": "https://api.weather.gov/points/46.1342,-121.6896",
        "trailhead": "Trailhead: #200088 FR 88 Pacific Crest Trail",
        "gridX": 150,
        "gridY": 126,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/150,126/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/57,109/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.1537,-124.6687",
        "gridId": "SEW",
        "latitude": 48.1536946166136,
        "longitude": -124.668684611548,
        "metadata-url": "https://api.weather.gov/points/48.1537,-124.6687",
        "trailhead": "Cape Alava",
        "gridX": 57,
        "gridY": 109,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/57,109/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ516",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Neah Bay"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/52,143/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.3957,-120.4502",
        "gridId": "OTX",
        "latitude": 48.3956941316373,
        "longitude": -120.450185226586,
        "metadata-url": "https://api.weather.gov/points/48.3957,-120.4502",
        "trailhead": "Slate Creek",
        "gridX": 52,
        "gridY": 143,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/52,143/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/130,63/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5348,-122.1288",
        "gridId": "SEW",
        "latitude": 47.5347943642428,
        "longitude": -122.128785155614,
        "metadata-url": "https://api.weather.gov/points/47.5348,-122.1288",
        "trailhead": "Red Town Meadow Trails",
        "gridX": 130,
        "gridY": 63,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/130,63/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ556",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Newcastle"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/171,118/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2046,-117.7073",
        "gridId": "PDT",
        "latitude": 46.2046399985392,
        "longitude": -117.707250000023,
        "metadata-url": "https://api.weather.gov/points/46.2046,-117.7073",
        "trailhead": "Rattlesnake Trailhead",
        "gridX": 171,
        "gridY": 118,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/171,118/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ030",
        "county": "https://api.weather.gov/zones/county/WAC013",
        "radarStation": "KPDT",
        "city": "Dayton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/136,13/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.5254,-121.6674",
        "gridId": "SEW",
        "latitude": 46.5253943706156,
        "longitude": -121.667385462318,
        "metadata-url": "https://api.weather.gov/points/46.5254,-121.6674",
        "trailhead": "South Point Lookout",
        "gridX": 136,
        "gridY": 13,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/136,13/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/143,125/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0939,-121.9073",
        "gridId": "PQR",
        "latitude": 46.0938944215281,
        "longitude": -121.907285518633,
        "metadata-url": "https://api.weather.gov/points/46.0939,-121.9073",
        "trailhead": "Big Creek Falls",
        "gridX": 143,
        "gridY": 125,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/143,125/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/152,100/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8857,-117.1315",
        "gridId": "OTX",
        "latitude": 47.8856938032576,
        "longitude": -117.131485948495,
        "metadata-url": "https://api.weather.gov/points/47.8857,-117.1315",
        "trailhead": "Mount Spokane - Burping Brook-Smith Gap Loop",
        "gridX": 152,
        "gridY": 100,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/152,100/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC063",
        "radarStation": "KOTX",
        "city": "Green Bluff"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/143,57/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4534,-121.7057",
        "gridId": "SEW",
        "latitude": 47.4533943219676,
        "longitude": -121.705685244207,
        "metadata-url": "https://api.weather.gov/points/47.4534,-121.7057",
        "trailhead": "Twin Falls",
        "gridX": 143,
        "gridY": 57,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/143,57/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Tanner"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/126,69/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6408,-122.2943",
        "gridId": "SEW",
        "latitude": 47.6407943760956,
        "longitude": -122.294285103807,
        "metadata-url": "https://api.weather.gov/points/47.6408,-122.2943",
        "trailhead": "Foster and Marsh Island Loop",
        "gridX": 126,
        "gridY": 69,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/126,69/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ558",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Seattle"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/119,98/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.2049,-122.706",
        "gridId": "SEW",
        "latitude": 48.2048943931933,
        "longitude": -122.705984899244,
        "metadata-url": "https://api.weather.gov/points/48.2049,-122.706",
        "trailhead": "Ebey's Landing",
        "gridX": 119,
        "gridY": 98,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/119,98/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ510",
        "county": "https://api.weather.gov/zones/county/WAC029",
        "radarStation": "KATX",
        "city": "Coupeville"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/157,122/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.8502,-121.6861",
        "gridId": "SEW",
        "latitude": 48.8502019998218,
        "longitude": -121.686089000394,
        "metadata-url": "https://api.weather.gov/points/48.8502,-121.6861",
        "trailhead": "Lake Ann Trailhead",
        "gridX": 157,
        "gridY": 122,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/157,122/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/132,64/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5474,-122.0713",
        "gridId": "SEW",
        "latitude": 47.5473943566963,
        "longitude": -122.071285162127,
        "metadata-url": "https://api.weather.gov/points/47.5474,-122.0713",
        "trailhead": "Big Tree Ridge",
        "gridX": 132,
        "gridY": 64,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/132,64/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ556",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Issaquah"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/134,26/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.779,-121.7823",
        "gridId": "SEW",
        "latitude": 46.7789943682619,
        "longitude": -121.782285387646,
        "metadata-url": "https://api.weather.gov/points/46.779,-121.7823",
        "trailhead": "Van Trump Park",
        "gridX": 134,
        "gridY": 26,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/134,26/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KRTX",
        "city": "Ashford"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/119,12/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.4305,-122.1525",
        "gridId": "SEW",
        "latitude": 46.4304944271199,
        "longitude": -122.152485405767,
        "metadata-url": "https://api.weather.gov/points/46.4305,-122.1525",
        "trailhead": "Goat Creek",
        "gridX": 119,
        "gridY": 12,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/119,12/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Morton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/143,129/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1731,-121.9257",
        "gridId": "PQR",
        "latitude": 46.1730944180189,
        "longitude": -121.925685498801,
        "metadata-url": "https://api.weather.gov/points/46.1731,-121.9257",
        "trailhead": "Cussed Hollow",
        "gridX": 143,
        "gridY": 129,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/143,129/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      },
      {
        "id": "https://api.weather.gov/points/46.176,-121.9266",
        "gridId": "PQR",
        "latitude": 46.175994418647,
        "longitude": -121.926585497092,
        "metadata-url": "https://api.weather.gov/points/46.176,-121.9266",
        "trailhead": "Spencer Butte",
        "gridX": 143,
        "gridY": 129,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/143,129/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/91,93/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9722,-123.5079",
        "gridId": "SEW",
        "latitude": 47.9721903183259,
        "longitude": -123.507899279186,
        "metadata-url": "https://api.weather.gov/points/47.9722,-123.5079",
        "trailhead": "Wolf Creek - Hurricane",
        "gridX": 91,
        "gridY": 93,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/91,93/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      },
      {
        "id": "https://api.weather.gov/points/47.9766,-123.5177",
        "gridId": "SEW",
        "latitude": 47.9765909306632,
        "longitude": -123.51772502886,
        "metadata-url": "https://api.weather.gov/points/47.9766,-123.5177",
        "trailhead": "Hurricane Hill",
        "gridX": 91,
        "gridY": 93,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/91,93/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/88,66/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4128,-123.4285",
        "gridId": "SEW",
        "latitude": 47.4128399994065,
        "longitude": -123.428508999252,
        "metadata-url": "https://api.weather.gov/points/47.4128,-123.4285",
        "trailhead": "Spider Lake Trailhead",
        "gridX": 88,
        "gridY": 66,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/88,66/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/129,27/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.7738,-121.9433",
        "gridId": "SEW",
        "latitude": 46.773785998421,
        "longitude": -121.943263000369,
        "metadata-url": "https://api.weather.gov/points/46.7738,-121.9433",
        "trailhead": "Trailhead: Lake Christine",
        "gridX": 129,
        "gridY": 27,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/129,27/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KRTX",
        "city": "Ashford"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/135,38/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.0314,-121.8268",
        "gridId": "SEW",
        "latitude": 47.0313659995716,
        "longitude": -121.826845999964,
        "metadata-url": "https://api.weather.gov/points/47.0314,-121.8268",
        "trailhead": "Summit Lake Trailhead",
        "gridX": 135,
        "gridY": 38,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/135,38/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Carbonado"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/37,100/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4629,-120.673",
        "gridId": "OTX",
        "latitude": 47.4628999991609,
        "longitude": -120.673000000856,
        "metadata-url": "https://api.weather.gov/points/47.4629,-120.673",
        "trailhead": "Ingalls Creek Trailhead",
        "gridX": 37,
        "gridY": 100,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/37,100/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/124,111/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4751,-122.6272",
        "gridId": "SEW",
        "latitude": 48.475094371124,
        "longitude": -122.627184844601,
        "metadata-url": "https://api.weather.gov/points/48.4751,-122.6272",
        "trailhead": "Anacortes Community Forest Lands",
        "gridX": 124,
        "gridY": 111,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/124,111/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ506",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "Anacortes"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/55,138/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.3114,-120.3365",
        "gridId": "OTX",
        "latitude": 48.3113789993943,
        "longitude": -120.336524000628,
        "metadata-url": "https://api.weather.gov/points/48.3114,-120.3365",
        "trailhead": "West Fork Buttermilk Trailhead",
        "gridX": 55,
        "gridY": 138,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/55,138/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Twisp"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/95,73/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5752,-123.2611",
        "gridId": "SEW",
        "latitude": 47.575195999242,
        "longitude": -123.2611110005,
        "metadata-url": "https://api.weather.gov/points/47.5752,-123.2611",
        "trailhead": "Mildred Lakes Trailhead",
        "gridX": 95,
        "gridY": 73,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/95,73/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/79,192/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3821,-120.8862",
        "gridId": "PDT",
        "latitude": 47.3820942376307,
        "longitude": -120.886185396681,
        "metadata-url": "https://api.weather.gov/points/47.3821,-120.8862",
        "trailhead": "Koppen Mountain",
        "gridX": 79,
        "gridY": 192,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/79,192/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Ronald"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/137,14/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.5456999,-121.6208",
        "gridId": "SEW",
        "latitude": 46.5456599990148,
        "longitude": -121.620811000564,
        "metadata-url": "https://api.weather.gov/points/46.5457,-121.6208",
        "trailhead": "Trailhead: Glacier Lake",
        "gridX": 137,
        "gridY": 14,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/137,14/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/155,84/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0661,-121.5107",
        "gridId": "SEW",
        "latitude": 48.0661139985764,
        "longitude": -121.510687999152,
        "metadata-url": "https://api.weather.gov/points/48.0661,-121.5107",
        "trailhead": "Ice Caves Trailhead",
        "gridX": 155,
        "gridY": 84,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/155,84/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Verlot"
      },
      {
        "id": "https://api.weather.gov/points/48.0539,-121.4902",
        "gridId": "SEW",
        "latitude": 48.0539399989993,
        "longitude": -121.49018300033,
        "metadata-url": "https://api.weather.gov/points/48.0539,-121.4902",
        "trailhead": "Dickerman Mountain/Perry Creek Trailhead",
        "gridX": 155,
        "gridY": 84,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/155,84/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Verlot"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/138,130/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4617,-117.7319",
        "gridId": "OTX",
        "latitude": 48.4616938295781,
        "longitude": -117.731885697246,
        "metadata-url": "https://api.weather.gov/points/48.4617,-117.7319",
        "trailhead": "Headquarters Trail",
        "gridX": 138,
        "gridY": 130,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/138,130/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC065",
        "radarStation": "KOTX",
        "city": "Addy"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/33,125/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9628,-120.945",
        "gridId": "OTX",
        "latitude": 47.9627999994845,
        "longitude": -120.944999999967,
        "metadata-url": "https://api.weather.gov/points/47.9628,-120.945",
        "trailhead": "White River Trailhead",
        "gridX": 33,
        "gridY": 125,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/33,125/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/51,118/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8857,-120.3342",
        "gridId": "OTX",
        "latitude": 47.8857129992279,
        "longitude": -120.334225000046,
        "metadata-url": "https://api.weather.gov/points/47.8857,-120.3342",
        "trailhead": "Windy Saddle Trailhead",
        "gridX": 51,
        "gridY": 118,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/51,118/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/101,90/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9651,-123.1933",
        "gridId": "SEW",
        "latitude": 47.9651119985956,
        "longitude": -123.193273999396,
        "metadata-url": "https://api.weather.gov/points/47.9651,-123.1933",
        "trailhead": "Slab Camp/Deer Ridge Trailhead",
        "gridX": 101,
        "gridY": 90,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/101,90/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "River Road"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/70,196/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4343999,-121.187",
        "gridId": "PDT",
        "latitude": 47.4343999991911,
        "longitude": -121.186999999972,
        "metadata-url": "https://api.weather.gov/points/47.4344,-121.187",
        "trailhead": "Pete Lake Trailhead",
        "gridX": 70,
        "gridY": 196,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/70,196/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/130,70/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6613,-122.1639",
        "gridId": "SEW",
        "latitude": 47.6612943613133,
        "longitude": -122.163885120434,
        "metadata-url": "https://api.weather.gov/points/47.6613,-122.1639",
        "trailhead": "Bridle Trails State Park - Bellevue",
        "gridX": 130,
        "gridY": 70,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/130,70/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ556",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Redmond"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/172,113/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7179,-121.1455",
        "gridId": "SEW",
        "latitude": 48.7178941921797,
        "longitude": -121.145485026298,
        "metadata-url": "https://api.weather.gov/points/48.7179,-121.1455",
        "trailhead": "Sourdough Mountain",
        "gridX": 172,
        "gridY": 113,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/172,113/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Marblemount"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/144,117/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.9372,-121.8191",
        "gridId": "PQR",
        "latitude": 45.9372299996699,
        "longitude": -121.819129999831,
        "metadata-url": "https://api.weather.gov/points/45.9372,-121.8191",
        "trailhead": "Trailhead: Indian Race Track - South",
        "gridX": 144,
        "gridY": 117,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/144,117/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Carson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/122,108/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4169,-122.6512",
        "gridId": "SEW",
        "latitude": 48.4168943773011,
        "longitude": -122.651184854888,
        "metadata-url": "https://api.weather.gov/points/48.4169,-122.6512",
        "trailhead": "Deception Pass Headlands-Rosario-Lighthouse Point",
        "gridX": 122,
        "gridY": 108,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/122,108/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ506",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "Whidbey Island Station"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/167,116/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1376,-117.8086",
        "gridId": "PDT",
        "latitude": 46.1375739987818,
        "longitude": -117.80862300057,
        "metadata-url": "https://api.weather.gov/points/46.1376,-117.8086",
        "trailhead": "Middle Point Trailhead",
        "gridX": 167,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/167,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ030",
        "county": "https://api.weather.gov/zones/county/WAC013",
        "radarStation": "KPDT",
        "city": "Dayton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/89,95/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0124,-123.5935",
        "gridId": "SEW",
        "latitude": 48.0123877130485,
        "longitude": -123.593508240014,
        "metadata-url": "https://api.weather.gov/points/48.0124,-123.5935",
        "trailhead": "West Elwha (Altaire)",
        "gridX": 89,
        "gridY": 95,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/89,95/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      },
      {
        "id": "https://api.weather.gov/points/48.0132,-123.5873",
        "gridId": "SEW",
        "latitude": 48.0131853084883,
        "longitude": -123.587259348445,
        "metadata-url": "https://api.weather.gov/points/48.0132,-123.5873",
        "trailhead": "Elwha to Hurricane",
        "gridX": 89,
        "gridY": 95,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/89,95/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      },
      {
        "id": "https://api.weather.gov/points/48.0165999,-123.5899",
        "gridId": "SEW",
        "latitude": 48.0165605563802,
        "longitude": -123.589875439057,
        "metadata-url": "https://api.weather.gov/points/48.0166,-123.5899",
        "trailhead": "Griff Creek",
        "gridX": 89,
        "gridY": 95,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/89,95/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/131,63/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5409,-122.0964",
        "gridId": "SEW",
        "latitude": 47.5408943597466,
        "longitude": -122.096385160238,
        "metadata-url": "https://api.weather.gov/points/47.5409,-122.0964",
        "trailhead": "Shangri La",
        "gridX": 131,
        "gridY": 63,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/131,63/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Issaquah"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/69,188/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.2672,-121.1737",
        "gridId": "PDT",
        "latitude": 47.2671942753546,
        "longitude": -121.173685376183,
        "metadata-url": "https://api.weather.gov/points/47.2672,-121.1737",
        "trailhead": "Kachess Ridge Beacon",
        "gridX": 69,
        "gridY": 188,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/69,188/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Roslyn"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/141,7/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.4228,-121.4715",
        "gridId": "SEW",
        "latitude": 46.4227559983359,
        "longitude": -121.471476999846,
        "metadata-url": "https://api.weather.gov/points/46.4228,-121.4715",
        "trailhead": "Trailhead: Walupt Lake",
        "gridX": 141,
        "gridY": 7,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/141,7/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/155,126/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4365,-117.1953",
        "gridId": "OTX",
        "latitude": 48.4365269992991,
        "longitude": -117.195333000918,
        "metadata-url": "https://api.weather.gov/points/48.4365,-117.1953",
        "trailhead": "Browns Lake",
        "gridX": 155,
        "gridY": 126,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/155,126/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC051",
        "radarStation": "KOTX",
        "city": "Cusick"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/153,124/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1043,-121.6033",
        "gridId": "PQR",
        "latitude": 46.1043199985722,
        "longitude": -121.603310000655,
        "metadata-url": "https://api.weather.gov/points/46.1043,-121.6033",
        "trailhead": "Trailhead: Salt Creek",
        "gridX": 153,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/153,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/66,179/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.0626,-121.2186",
        "gridId": "PDT",
        "latitude": 47.0626299989227,
        "longitude": -121.218612999494,
        "metadata-url": "https://api.weather.gov/points/47.0626,-121.2186",
        "trailhead": "Longmire Meadow",
        "gridX": 66,
        "gridY": 179,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/66,179/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KATX",
        "city": "Easton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/74,200/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5329,-121.0826",
        "gridId": "PDT",
        "latitude": 47.5328942502816,
        "longitude": -121.082585328181,
        "metadata-url": "https://api.weather.gov/points/47.5329,-121.0826",
        "trailhead": "Paddy-Go-Easy Pass",
        "gridX": 74,
        "gridY": 200,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/74,200/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/127,19/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1206,-117.5056",
        "gridId": "OTX",
        "latitude": 46.1206169988219,
        "longitude": -117.505649999446,
        "metadata-url": "https://api.weather.gov/points/46.1206,-117.5056",
        "trailhead": "Kelly Camp Trailhead",
        "gridX": 127,
        "gridY": 19,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/127,19/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ031",
        "county": "https://api.weather.gov/zones/county/WAC023",
        "radarStation": "KPDT",
        "city": "Pomeroy"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/162,71/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8275999,-121.2072",
        "gridId": "SEW",
        "latitude": 47.8276489988417,
        "longitude": -121.2071799997,
        "metadata-url": "https://api.weather.gov/points/47.8276,-121.2072",
        "trailhead": "Meadow Creek Trailhead",
        "gridX": 162,
        "gridY": 71,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/162,71/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/151,73/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8174,-121.5714",
        "gridId": "SEW",
        "latitude": 47.8173942873092,
        "longitude": -121.571385179836,
        "metadata-url": "https://api.weather.gov/points/47.8174,-121.5714",
        "trailhead": "Index Town Wall",
        "gridX": 151,
        "gridY": 73,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/151,73/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Index"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/103,86/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8863,-123.0917",
        "gridId": "SEW",
        "latitude": 47.8863149987978,
        "longitude": -123.091713000908,
        "metadata-url": "https://api.weather.gov/points/47.8863,-123.0917",
        "trailhead": "Tubal Cain Trailhead",
        "gridX": 103,
        "gridY": 86,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/103,86/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Quilcene"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/131,8/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.3965,-121.7653",
        "gridId": "SEW",
        "latitude": 46.3964943886244,
        "longitude": -121.765285474984,
        "metadata-url": "https://api.weather.gov/points/46.3965,-121.7653",
        "trailhead": "Juniper Ridge",
        "gridX": 131,
        "gridY": 8,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/131,8/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/143,31/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.9227,-121.5336",
        "gridId": "SEW",
        "latitude": 46.9226943332031,
        "longitude": -121.533585395153,
        "metadata-url": "https://api.weather.gov/points/46.9227,-121.5336",
        "trailhead": "Crystal Lakes",
        "gridX": 143,
        "gridY": 31,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/143,31/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/49,123/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9813,-120.4141",
        "gridId": "OTX",
        "latitude": 47.9813469990367,
        "longitude": -120.414122000302,
        "metadata-url": "https://api.weather.gov/points/47.9813,-120.4141",
        "trailhead": "Crescent Hill Trailhead",
        "gridX": 49,
        "gridY": 123,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/49,123/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/150,73/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8093,-121.5736",
        "gridId": "SEW",
        "latitude": 47.8092839990011,
        "longitude": -121.573631001029,
        "metadata-url": "https://api.weather.gov/points/47.8093,-121.5736",
        "trailhead": "Lake Serene Trailhead",
        "gridX": 150,
        "gridY": 73,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/150,73/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Index"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/139,127/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1116,-122.0183",
        "gridId": "PQR",
        "latitude": 46.1115944318382,
        "longitude": -122.01828549645,
        "metadata-url": "https://api.weather.gov/points/46.1116,-122.0183",
        "trailhead": "Cedar Flats Nature Trail",
        "gridX": 139,
        "gridY": 127,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/139,127/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/147,86/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0769,-121.7459",
        "gridId": "SEW",
        "latitude": 48.076919999051,
        "longitude": -121.745930000129,
        "metadata-url": "https://api.weather.gov/points/48.0769,-121.7459",
        "trailhead": "Lake Twenty Two Trailhead",
        "gridX": 147,
        "gridY": 86,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/147,86/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Verlot"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/64,194/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3673,-121.3539",
        "gridId": "PDT",
        "latitude": 47.3672942891211,
        "longitude": -121.35388532221,
        "metadata-url": "https://api.weather.gov/points/47.3673,-121.3539",
        "trailhead": "Mount Margaret",
        "gridX": 64,
        "gridY": 194,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/64,194/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/145,32/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.9611,-121.4815",
        "gridId": "SEW",
        "latitude": 46.9610719990044,
        "longitude": -121.481528999354,
        "metadata-url": "https://api.weather.gov/points/46.9611,-121.4815",
        "trailhead": "Sand Flats Trailhead",
        "gridX": 145,
        "gridY": 32,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/145,32/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/137,134/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2497,-122.1356",
        "gridId": "PQR",
        "latitude": 46.2497209996719,
        "longitude": -122.135636000113,
        "metadata-url": "https://api.weather.gov/points/46.2497,-122.1356",
        "trailhead": "Windy Ridge Interpretive Site",
        "gridX": 137,
        "gridY": 134,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/137,134/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Morton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/165,112/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0618,-117.8443",
        "gridId": "PDT",
        "latitude": 46.0617939989763,
        "longitude": -117.844284999259,
        "metadata-url": "https://api.weather.gov/points/46.0618,-117.8443",
        "trailhead": "Sawtooth Trailhead",
        "gridX": 165,
        "gridY": 112,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/165,112/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ030",
        "county": "https://api.weather.gov/zones/county/WAC013",
        "radarStation": "KPDT",
        "city": "Dixie"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/130,78/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3512,-117.7106",
        "gridId": "OTX",
        "latitude": 47.3511939012403,
        "longitude": -117.710585964236,
        "metadata-url": "https://api.weather.gov/points/47.3512,-117.7106",
        "trailhead": "Columbia Plateau - Amber Lake",
        "gridX": 130,
        "gridY": 78,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/130,78/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ036",
        "county": "https://api.weather.gov/zones/county/WAC063",
        "radarStation": "KOTX",
        "city": "Cheney"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/139,10/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.4669,-121.5274",
        "gridId": "SEW",
        "latitude": 46.4668943591169,
        "longitude": -121.527385498076,
        "metadata-url": "https://api.weather.gov/points/46.4669,-121.5274",
        "trailhead": "Goat Lake-Jordan Basin",
        "gridX": 139,
        "gridY": 10,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/139,10/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/135,102/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8746,-117.691",
        "gridId": "OTX",
        "latitude": 47.874593863826,
        "longitude": -117.690985847194,
        "metadata-url": "https://api.weather.gov/points/47.8746,-117.691",
        "trailhead": "McLellan Conservation Area",
        "gridX": 135,
        "gridY": 102,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/135,102/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ036",
        "county": "https://api.weather.gov/zones/county/WAC063",
        "radarStation": "KOTX",
        "city": "Clayton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/53,121/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9625,-120.3009",
        "gridId": "OTX",
        "latitude": 47.9624999994949,
        "longitude": -120.300915000127,
        "metadata-url": "https://api.weather.gov/points/47.9625,-120.3009",
        "trailhead": "North 25 Mile Creek Trailhead",
        "gridX": 53,
        "gridY": 121,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/53,121/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      },
      {
        "id": "https://api.weather.gov/points/47.9587,-120.2925",
        "gridId": "OTX",
        "latitude": 47.9587089992575,
        "longitude": -120.292539000174,
        "metadata-url": "https://api.weather.gov/points/47.9587,-120.2925",
        "trailhead": "Pot Peak Trailhead",
        "gridX": 53,
        "gridY": 121,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/53,121/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/146,129/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1825,-121.8478",
        "gridId": "PQR",
        "latitude": 46.1825059991072,
        "longitude": -121.847771000016,
        "metadata-url": "https://api.weather.gov/points/46.1825,-121.8478",
        "trailhead": "Trailhead: Lewis River/Quartz Creek",
        "gridX": 146,
        "gridY": 129,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/146,129/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/155,132/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2934,-121.595",
        "gridId": "PQR",
        "latitude": 46.2933919989703,
        "longitude": -121.594996999797,
        "metadata-url": "https://api.weather.gov/points/46.2934,-121.595",
        "trailhead": "Trailhead: Chain-of-Lakes",
        "gridX": 155,
        "gridY": 132,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/155,132/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/27,118/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8023,-121.0769",
        "gridId": "OTX",
        "latitude": 47.8023459991684,
        "longitude": -121.076888998956,
        "metadata-url": "https://api.weather.gov/points/47.8023,-121.0769",
        "trailhead": "Smithbrook Trailhead",
        "gridX": 27,
        "gridY": 118,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/27,118/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/134,115/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.8464,-122.1112",
        "gridId": "PQR",
        "latitude": 45.8463944564929,
        "longitude": -122.111185538773,
        "metadata-url": "https://api.weather.gov/points/45.8464,-122.1112",
        "trailhead": "Zig Zag Lake",
        "gridX": 134,
        "gridY": 115,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/134,115/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Yacolt"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/141,69/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6928,-121.8504",
        "gridId": "SEW",
        "latitude": 47.6927943249774,
        "longitude": -121.850385163047,
        "metadata-url": "https://api.weather.gov/points/47.6928,-121.8504",
        "trailhead": "Moss Lake",
        "gridX": 141,
        "gridY": 69,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/141,69/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Lake Marcel-Stillwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/98,44/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.0008,-123.0042",
        "gridId": "SEW",
        "latitude": 47.0007944873815,
        "longitude": -123.004185142049,
        "metadata-url": "https://api.weather.gov/points/47.0008,-123.0042",
        "trailhead": "Capitol State Forest - McLane Creek",
        "gridX": 98,
        "gridY": 44,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/98,44/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ504",
        "county": "https://api.weather.gov/zones/county/WAC067",
        "radarStation": "KLGX",
        "city": "Tumwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/94,69/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4957,-123.2661",
        "gridId": "SEW",
        "latitude": 47.4957229995282,
        "longitude": -123.266092000208,
        "metadata-url": "https://api.weather.gov/points/47.4957,-123.2661",
        "trailhead": "Mt. Rose Trailhead",
        "gridX": 94,
        "gridY": 69,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/94,69/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/61,195/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3701,-121.4443",
        "gridId": "PDT",
        "latitude": 47.3700942986453,
        "longitude": -121.444285307033,
        "metadata-url": "https://api.weather.gov/points/47.3701,-121.4443",
        "trailhead": "Mount Catherine",
        "gridX": 61,
        "gridY": 195,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/61,195/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/162,148/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.9011,-117.0814",
        "gridId": "OTX",
        "latitude": 48.9011109994843,
        "longitude": -117.081389000442,
        "metadata-url": "https://api.weather.gov/points/48.9011,-117.0814",
        "trailhead": "Thunder Creek Trailhead #526",
        "gridX": 162,
        "gridY": 148,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/162,148/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC051",
        "radarStation": "KOTX",
        "city": "Metaline Falls"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/75,199/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5065,-121.0592",
        "gridId": "PDT",
        "latitude": 47.5064942495839,
        "longitude": -121.059185338302,
        "metadata-url": "https://api.weather.gov/points/47.5065,-121.0592",
        "trailhead": "Scatter Creek",
        "gridX": 75,
        "gridY": 199,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/75,199/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Roslyn"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/30,108/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6064999,-120.916",
        "gridId": "OTX",
        "latitude": 47.6064999986567,
        "longitude": -120.915999999616,
        "metadata-url": "https://api.weather.gov/points/47.6065,-120.916",
        "trailhead": "Jack Trout Trailhead",
        "gridX": 30,
        "gridY": 108,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/30,108/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/101,91/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9679,-123.1877",
        "gridId": "SEW",
        "latitude": 47.9679199990409,
        "longitude": -123.187743000415,
        "metadata-url": "https://api.weather.gov/points/47.9679,-123.1877",
        "trailhead": "Ned Hill Trailhead",
        "gridX": 101,
        "gridY": 91,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/101,91/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "River Road"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/173,117/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.189,-117.6251",
        "gridId": "PDT",
        "latitude": 46.1890139991783,
        "longitude": -117.625066000049,
        "metadata-url": "https://api.weather.gov/points/46.189,-117.6251",
        "trailhead": "Tucannon Trailhead",
        "gridX": 173,
        "gridY": 117,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/173,117/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ030",
        "county": "https://api.weather.gov/zones/county/WAC013",
        "radarStation": "KPDT",
        "city": "Dayton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/142,35/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.0053,-121.6131",
        "gridId": "SEW",
        "latitude": 47.0052943374073,
        "longitude": -121.613085363107,
        "metadata-url": "https://api.weather.gov/points/47.0053,-121.6131",
        "trailhead": "Huckleberry Creek",
        "gridX": 142,
        "gridY": 35,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/142,35/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/53,140/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.3526,-120.407",
        "gridId": "OTX",
        "latitude": 48.3525899996527,
        "longitude": -120.407000000617,
        "metadata-url": "https://api.weather.gov/points/48.3526,-120.407",
        "trailhead": "Eagle Creek/Oval Trailhead",
        "gridX": 53,
        "gridY": 140,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/53,140/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/81,73/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5283,-123.7066",
        "gridId": "SEW",
        "latitude": 47.528299998605,
        "longitude": -123.706599999281,
        "metadata-url": "https://api.weather.gov/points/47.5283,-123.7066",
        "trailhead": "Fletcher Canyon Trailhead",
        "gridX": 81,
        "gridY": 73,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/81,73/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KLGX",
        "city": "Amanda Park"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/40,135/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.2006,-120.7864",
        "gridId": "OTX",
        "latitude": 48.2005941800365,
        "longitude": -120.786385216554,
        "metadata-url": "https://api.weather.gov/points/48.2006,-120.7864",
        "trailhead": "Holden Lake",
        "gridX": 40,
        "gridY": 135,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/40,135/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Twisp"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/80,192/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3945999,-120.8757",
        "gridId": "PDT",
        "latitude": 47.3945942356672,
        "longitude": -120.875685395262,
        "metadata-url": "https://api.weather.gov/points/47.3946,-120.8757",
        "trailhead": "Bean Peak",
        "gridX": 80,
        "gridY": 192,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/80,192/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Ronald"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/128,110/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.7218,-122.2697",
        "gridId": "PQR",
        "latitude": 45.7217944804845,
        "longitude": -122.269685539245,
        "metadata-url": "https://api.weather.gov/points/45.7218,-122.2697",
        "trailhead": "Tarbell",
        "gridX": 128,
        "gridY": 110,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/128,110/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ040",
        "county": "https://api.weather.gov/zones/county/WAC011",
        "radarStation": "KRTX",
        "city": "Fern Prairie"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/136,78/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8613,-122.0588",
        "gridId": "SEW",
        "latitude": 47.8612943385556,
        "longitude": -122.058785088736,
        "metadata-url": "https://api.weather.gov/points/47.8613,-122.0588",
        "trailhead": "Lord Hill",
        "gridX": 136,
        "gridY": 78,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/136,78/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Cathcart"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/135,129/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1374,-122.1558",
        "gridId": "PQR",
        "latitude": 46.1374299992222,
        "longitude": -122.155800999484,
        "metadata-url": "https://api.weather.gov/points/46.1374,-122.1558",
        "trailhead": "June Lake Trailhead",
        "gridX": 135,
        "gridY": 129,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/135,129/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Amboy"
      },
      {
        "id": "https://api.weather.gov/points/46.1467,-122.1817",
        "gridId": "PQR",
        "latitude": 46.1466949992396,
        "longitude": -122.181703000498,
        "metadata-url": "https://api.weather.gov/points/46.1467,-122.1817",
        "trailhead": "Climbers Bivouac Trailhead",
        "gridX": 135,
        "gridY": 129,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/135,129/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Amboy"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/47,151/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5566,-120.6547",
        "gridId": "OTX",
        "latitude": 48.5566359989142,
        "longitude": -120.654684999121,
        "metadata-url": "https://api.weather.gov/points/48.5566,-120.6547",
        "trailhead": "Cutthroat Trailhead",
        "gridX": 47,
        "gridY": 151,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/47,151/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/95,69/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5071,-123.2317",
        "gridId": "SEW",
        "latitude": 47.5070989986,
        "longitude": -123.231718000325,
        "metadata-url": "https://api.weather.gov/points/47.5071,-123.2317",
        "trailhead": "Mt. Ellinor Lower Trailhead",
        "gridX": 95,
        "gridY": 69,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/95,69/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/97,72/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5629,-123.1948",
        "gridId": "SEW",
        "latitude": 47.5629249985539,
        "longitude": -123.194814999534,
        "metadata-url": "https://api.weather.gov/points/47.5629,-123.1948",
        "trailhead": "Jefferson Lake Trailhead",
        "gridX": 97,
        "gridY": 72,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/97,72/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/158,143/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.6636,-118.2281",
        "gridId": "PDT",
        "latitude": 46.6635940034493,
        "longitude": -118.228086023154,
        "metadata-url": "https://api.weather.gov/points/46.6636,-118.2281",
        "trailhead": "Palouse Falls",
        "gridX": 158,
        "gridY": 143,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/158,143/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ028",
        "county": "https://api.weather.gov/zones/county/WAC021",
        "radarStation": "KPDT",
        "city": "Washtucna"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/136,80/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4168,-117.5311",
        "gridId": "OTX",
        "latitude": 47.4167938785744,
        "longitude": -117.531085982993,
        "metadata-url": "https://api.weather.gov/points/47.4168,-117.5311",
        "trailhead": "Turnbull National Wildlife Refuge",
        "gridX": 136,
        "gridY": 80,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/136,80/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ036",
        "county": "https://api.weather.gov/zones/county/WAC063",
        "radarStation": "KOTX",
        "city": "Cheney"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/136,60/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4882,-121.9465",
        "gridId": "SEW",
        "latitude": 47.4881943464168,
        "longitude": -121.946485196516,
        "metadata-url": "https://api.weather.gov/points/47.4882,-121.9465",
        "trailhead": "Paw Print Connector",
        "gridX": 136,
        "gridY": 60,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/136,60/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Mirrormont"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/95,70/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5212999,-123.2315",
        "gridId": "SEW",
        "latitude": 47.5212599994667,
        "longitude": -123.23145199971,
        "metadata-url": "https://api.weather.gov/points/47.5213,-123.2315",
        "trailhead": "Jefferson Pass Trailhead",
        "gridX": 95,
        "gridY": 70,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/95,70/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      },
      {
        "id": "https://api.weather.gov/points/47.5105,-123.2479",
        "gridId": "SEW",
        "latitude": 47.5104659984473,
        "longitude": -123.247912000229,
        "metadata-url": "https://api.weather.gov/points/47.5105,-123.2479",
        "trailhead": "Mt. Ellinor Upper Trailhead",
        "gridX": 95,
        "gridY": 70,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/95,70/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/144,131/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2132999,-121.9163",
        "gridId": "PQR",
        "latitude": 46.2132944152606,
        "longitude": -121.916285490838,
        "metadata-url": "https://api.weather.gov/points/46.2133,-121.9163",
        "trailhead": "Craggy Peak",
        "gridX": 144,
        "gridY": 131,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/144,131/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/103,76/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6766999,-123.0387",
        "gridId": "SEW",
        "latitude": 47.6767089992262,
        "longitude": -123.03867000011,
        "metadata-url": "https://api.weather.gov/points/47.6767,-123.0387",
        "trailhead": "Murhut Falls Trailhead",
        "gridX": 103,
        "gridY": 76,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/103,76/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Brinnon"
      },
      {
        "id": "https://api.weather.gov/points/47.6843999,-123.0377",
        "gridId": "SEW",
        "latitude": 47.6843999994161,
        "longitude": -123.037719999499,
        "metadata-url": "https://api.weather.gov/points/47.6844,-123.0377",
        "trailhead": "Duckabush Stock Trailhead",
        "gridX": 103,
        "gridY": 76,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/103,76/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Brinnon"
      },
      {
        "id": "https://api.weather.gov/points/47.6852,-123.0398",
        "gridId": "SEW",
        "latitude": 47.6851939991804,
        "longitude": -123.039756000041,
        "metadata-url": "https://api.weather.gov/points/47.6852,-123.0398",
        "trailhead": "Duckabush Trailhead",
        "gridX": 103,
        "gridY": 76,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/103,76/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Brinnon"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/90,68/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4607,-123.3701",
        "gridId": "SEW",
        "latitude": 47.4606799986815,
        "longitude": -123.370075999659,
        "metadata-url": "https://api.weather.gov/points/47.4607,-123.3701",
        "trailhead": "Dry Creek West Trailhead",
        "gridX": 90,
        "gridY": 68,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/90,68/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/57,157/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.5765,-121.358",
        "gridId": "PDT",
        "latitude": 46.5764999994282,
        "longitude": -121.358000000137,
        "metadata-url": "https://api.weather.gov/points/46.5765,-121.358",
        "trailhead": "Scatter Creek - Nac Trailhead",
        "gridX": 57,
        "gridY": 157,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/57,157/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/55,137/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.2894,-120.3284",
        "gridId": "OTX",
        "latitude": 48.2894499987837,
        "longitude": -120.32837000097,
        "metadata-url": "https://api.weather.gov/points/48.2894,-120.3284",
        "trailhead": "East Fork Buttermilk Trailhead",
        "gridX": 55,
        "gridY": 137,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/55,137/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Twisp"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/149,124/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.3711,-117.3722",
        "gridId": "OTX",
        "latitude": 48.3711109984473,
        "longitude": -117.372221999908,
        "metadata-url": "https://api.weather.gov/points/48.3711,-117.3722",
        "trailhead": "Batey-Bould ORV Trailhead",
        "gridX": 149,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/149,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC051",
        "radarStation": "KOTX",
        "city": "Cusick"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/75,90/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8371,-123.9741",
        "gridId": "SEW",
        "latitude": 47.8370586722127,
        "longitude": -123.974104083223,
        "metadata-url": "https://api.weather.gov/points/47.8371,-123.9741",
        "trailhead": "Big Spruce Tree Nature Trail",
        "gridX": 75,
        "gridY": 90,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/75,90/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KLGX",
        "city": "Forks"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/145,142/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.731,-117.5622",
        "gridId": "OTX",
        "latitude": 48.7309937935276,
        "longitude": -117.562185662895,
        "metadata-url": "https://api.weather.gov/points/48.731,-117.5622",
        "trailhead": "Big Meadow Lakeshore Trail 126",
        "gridX": 145,
        "gridY": 142,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/145,142/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC051",
        "radarStation": "KOTX",
        "city": "Ione"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/42,96/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3955,-120.5006",
        "gridId": "OTX",
        "latitude": 47.3955079993656,
        "longitude": -120.500609999136,
        "metadata-url": "https://api.weather.gov/points/47.3955,-120.5006",
        "trailhead": "Devils Gulch ORV Trailhead",
        "gridX": 42,
        "gridY": 96,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/42,96/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Wenatchee"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/157,64/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6589,-121.323",
        "gridId": "SEW",
        "latitude": 47.6588942689483,
        "longitude": -121.322985258211,
        "metadata-url": "https://api.weather.gov/points/47.6589,-121.323",
        "trailhead": "Evans Lake",
        "gridX": 157,
        "gridY": 64,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/157,64/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/85,67/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4258,-123.518",
        "gridId": "SEW",
        "latitude": 47.425796999131,
        "longitude": -123.517970000051,
        "metadata-url": "https://api.weather.gov/points/47.4258,-123.518",
        "trailhead": "Church Creek West Trailhead",
        "gridX": 85,
        "gridY": 67,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/85,67/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Neilton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/143,58/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.486,-121.7009",
        "gridId": "SEW",
        "latitude": 47.4859943199527,
        "longitude": -121.7008852376,
        "metadata-url": "https://api.weather.gov/points/47.486,-121.7009",
        "trailhead": "Mount Teneriffe Road Trail",
        "gridX": 143,
        "gridY": 58,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/143,58/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Tanner"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/48,137/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1355999,-121.4951",
        "gridId": "PDT",
        "latitude": 46.1355999986537,
        "longitude": -121.495100000501,
        "metadata-url": "https://api.weather.gov/points/46.1356,-121.4951",
        "trailhead": "Trailhead: South Climb",
        "gridX": 48,
        "gridY": 137,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/48,137/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      },
      {
        "id": "https://api.weather.gov/points/46.1211,-121.514",
        "gridId": "PDT",
        "latitude": 46.1210959987221,
        "longitude": -121.513972999524,
        "metadata-url": "https://api.weather.gov/points/46.1211,-121.514",
        "trailhead": "Trailhead: Gotchen Creek FR 8020",
        "gridX": 48,
        "gridY": 137,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/48,137/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      },
      {
        "id": "https://api.weather.gov/points/46.1211,-121.514",
        "gridId": "PDT",
        "latitude": 46.1210959987221,
        "longitude": -121.513972999524,
        "metadata-url": "https://api.weather.gov/points/46.1211,-121.514",
        "trailhead": "Trailhead: Gotchen Creek FR 8040",
        "gridX": 48,
        "gridY": 137,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/48,137/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      },
      {
        "id": "https://api.weather.gov/points/46.1272,-121.5176",
        "gridId": "PDT",
        "latitude": 46.1271999995028,
        "longitude": -121.517599999521,
        "metadata-url": "https://api.weather.gov/points/46.1272,-121.5176",
        "trailhead": "Trailhead: Crofton Ridge East",
        "gridX": 48,
        "gridY": 137,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/48,137/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/38,125/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9726,-120.79",
        "gridId": "OTX",
        "latitude": 47.9725999991969,
        "longitude": -120.789999999697,
        "metadata-url": "https://api.weather.gov/points/47.9726,-120.79",
        "trailhead": "Estes Butte Trailhead",
        "gridX": 38,
        "gridY": 125,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/38,125/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      },
      {
        "id": "https://api.weather.gov/points/47.9692,-120.788",
        "gridId": "OTX",
        "latitude": 47.9691999985815,
        "longitude": -120.788000000731,
        "metadata-url": "https://api.weather.gov/points/47.9692,-120.788",
        "trailhead": "Rock Creek Trailhead",
        "gridX": 38,
        "gridY": 125,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/38,125/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/147,42/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.1693,-121.4904",
        "gridId": "SEW",
        "latitude": 47.1692779998213,
        "longitude": -121.490370999612,
        "metadata-url": "https://api.weather.gov/points/47.1693,-121.4904",
        "trailhead": "Kelly Butte Lookout",
        "gridX": 147,
        "gridY": 42,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/147,42/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/46,97/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4293,-120.3684",
        "gridId": "OTX",
        "latitude": 47.4292941794593,
        "longitude": -120.368385473246,
        "metadata-url": "https://api.weather.gov/points/47.4293,-120.3684",
        "trailhead": "Sage Hills",
        "gridX": 46,
        "gridY": 97,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/46,97/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ041",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Wenatchee"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/138,15/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.5638,-121.592",
        "gridId": "SEW",
        "latitude": 46.5638299995652,
        "longitude": -121.591979999729,
        "metadata-url": "https://api.weather.gov/points/46.5638,-121.592",
        "trailhead": "Trailhead: Lily Basin Stock",
        "gridX": 138,
        "gridY": 15,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/138,15/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      },
      {
        "id": "https://api.weather.gov/points/46.5644,-121.5987",
        "gridId": "SEW",
        "latitude": 46.5644159988398,
        "longitude": -121.598672999955,
        "metadata-url": "https://api.weather.gov/points/46.5644,-121.5987",
        "trailhead": "Trailhead: Lily Basin",
        "gridX": 138,
        "gridY": 15,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/138,15/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/78,69/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.432,-123.7596",
        "gridId": "SEW",
        "latitude": 47.4319669991441,
        "longitude": -123.759616000684,
        "metadata-url": "https://api.weather.gov/points/47.432,-123.7596",
        "trailhead": "Switchback Trailhead",
        "gridX": 78,
        "gridY": 69,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/78,69/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Neilton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/133,137/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2975,-122.2654",
        "gridId": "PQR",
        "latitude": 46.2975269990005,
        "longitude": -122.265404999832,
        "metadata-url": "https://api.weather.gov/points/46.2975,-122.2654",
        "trailhead": "Science and Learning Center at Coldwater",
        "gridX": 133,
        "gridY": 137,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/133,137/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC015",
        "radarStation": "KRTX",
        "city": "Morton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/151,53/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4151,-121.4433",
        "gridId": "SEW",
        "latitude": 47.4151039991914,
        "longitude": -121.443289999448,
        "metadata-url": "https://api.weather.gov/points/47.4151,-121.4433",
        "trailhead": "Denny Creek Trailhead",
        "gridX": 151,
        "gridY": 53,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/151,53/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      },
      {
        "id": "https://api.weather.gov/points/47.4131,-121.4425",
        "gridId": "SEW",
        "latitude": 47.4130969990818,
        "longitude": -121.442542999844,
        "metadata-url": "https://api.weather.gov/points/47.4131,-121.4425",
        "trailhead": "Franklin Falls Trailhead",
        "gridX": 151,
        "gridY": 53,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/151,53/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/77,100/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0616,-123.9943",
        "gridId": "SEW",
        "latitude": 48.0615778217935,
        "longitude": -123.994311423511,
        "metadata-url": "https://api.weather.gov/points/48.0616,-123.9943",
        "trailhead": "Aurora Ridge",
        "gridX": 77,
        "gridY": 100,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/77,100/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Clallam Bay"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/47,150/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5264,-120.6502",
        "gridId": "OTX",
        "latitude": 48.5264399996036,
        "longitude": -120.650159999872,
        "metadata-url": "https://api.weather.gov/points/48.5264,-120.6502",
        "trailhead": "Washington Pass Observation Site",
        "gridX": 47,
        "gridY": 150,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/47,150/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/149,61/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5606,-121.5323",
        "gridId": "SEW",
        "latitude": 47.5606469989619,
        "longitude": -121.532322000044,
        "metadata-url": "https://api.weather.gov/points/47.5606,-121.5323",
        "trailhead": "Snoqualmie Lake Trailhead",
        "gridX": 149,
        "gridY": 61,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/149,61/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Tanner"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/167,91/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.2447,-121.1888",
        "gridId": "SEW",
        "latitude": 48.2446942219462,
        "longitude": -121.188785138548,
        "metadata-url": "https://api.weather.gov/points/48.2447,-121.1888",
        "trailhead": "Sulphur Mountain",
        "gridX": 167,
        "gridY": 91,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/167,91/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/100,157/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.862,-119.0437",
        "gridId": "OTX",
        "latitude": 48.8619859991833,
        "longitude": -119.043709000379,
        "metadata-url": "https://api.weather.gov/points/48.862,-119.0437",
        "trailhead": "Big Tree Botanical Area Interpretive Site",
        "gridX": 100,
        "gridY": 157,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/100,157/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KOTX",
        "city": "Oroville"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/151,120/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0244,-121.6421",
        "gridId": "PQR",
        "latitude": 46.0243749992493,
        "longitude": -121.642144000064,
        "metadata-url": "https://api.weather.gov/points/46.0244,-121.6421",
        "trailhead": "Trailhead: Service",
        "gridX": 151,
        "gridY": 120,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/151,120/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/146,90/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6462,-117.2787",
        "gridId": "OTX",
        "latitude": 47.6461938355956,
        "longitude": -117.278685976668,
        "metadata-url": "https://api.weather.gov/points/47.6462,-117.2787",
        "trailhead": "Ridge Top Trail",
        "gridX": 146,
        "gridY": 90,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/146,90/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ036",
        "county": "https://api.weather.gov/zones/county/WAC063",
        "radarStation": "KOTX",
        "city": "Spokane Valley"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/52,156/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6617,-120.542",
        "gridId": "OTX",
        "latitude": 48.6616999992101,
        "longitude": -120.541999999849,
        "metadata-url": "https://api.weather.gov/points/48.6617,-120.542",
        "trailhead": "Robinson Creek Trailhead",
        "gridX": 52,
        "gridY": 156,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/52,156/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/37,111/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6886,-120.74",
        "gridId": "OTX",
        "latitude": 47.6885999996666,
        "longitude": -120.739999999611,
        "metadata-url": "https://api.weather.gov/points/47.6886,-120.74",
        "trailhead": "Chiwaukum Creek Trailhead",
        "gridX": 37,
        "gridY": 111,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/37,111/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      },
      {
        "id": "https://api.weather.gov/points/47.6781,-120.732",
        "gridId": "OTX",
        "latitude": 47.6780999992885,
        "longitude": -120.731999999699,
        "metadata-url": "https://api.weather.gov/points/47.6781,-120.732",
        "trailhead": "Shaser Creek Trailhead",
        "gridX": 37,
        "gridY": 111,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/37,111/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/56,136/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.2763,-120.2905",
        "gridId": "OTX",
        "latitude": 48.2762599993175,
        "longitude": -120.290540000151,
        "metadata-url": "https://api.weather.gov/points/48.2763,-120.2905",
        "trailhead": "Libby Lake Trailhead",
        "gridX": 56,
        "gridY": 136,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/56,136/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Twisp"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/155,131/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2695,-121.5775",
        "gridId": "PQR",
        "latitude": 46.2694749996029,
        "longitude": -121.577545999039,
        "metadata-url": "https://api.weather.gov/points/46.2695,-121.5775",
        "trailhead": "Trailhead: Divide Camp",
        "gridX": 155,
        "gridY": 131,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/155,131/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/106,87/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9229,-123.0262",
        "gridId": "SEW",
        "latitude": 47.9228769993788,
        "longitude": -123.02621900016,
        "metadata-url": "https://api.weather.gov/points/47.9229,-123.0262",
        "trailhead": "Mt. Zion/Sleepy Hollow Trailhead",
        "gridX": 106,
        "gridY": 87,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/106,87/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Blyn"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/89,93/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9721,-123.5881",
        "gridId": "SEW",
        "latitude": 47.9721398062665,
        "longitude": -123.58813279156,
        "metadata-url": "https://api.weather.gov/points/47.9721,-123.5881",
        "trailhead": "Upper Lake Mills",
        "gridX": 89,
        "gridY": 93,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/89,93/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      },
      {
        "id": "https://api.weather.gov/points/47.9677999,-123.5826",
        "gridId": "SEW",
        "latitude": 47.9677847154253,
        "longitude": -123.58263749847,
        "metadata-url": "https://api.weather.gov/points/47.9678,-123.5826",
        "trailhead": "Whiskey Bend",
        "gridX": 89,
        "gridY": 93,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/89,93/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/96,73/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5833,-123.2343",
        "gridId": "SEW",
        "latitude": 47.5832839987672,
        "longitude": -123.234275999015,
        "metadata-url": "https://api.weather.gov/points/47.5833,-123.2343",
        "trailhead": "Putvin Trailhead",
        "gridX": 96,
        "gridY": 73,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/96,73/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/66,159/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7838,-120.1081",
        "gridId": "OTX",
        "latitude": 48.7838479994628,
        "longitude": -120.108123999107,
        "metadata-url": "https://api.weather.gov/points/48.7838,-120.1081",
        "trailhead": "Andrews Creek Trailhead",
        "gridX": 66,
        "gridY": 159,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/66,159/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Loomis"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/76,188/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.2953,-120.965",
        "gridId": "PDT",
        "latitude": 47.2952942514575,
        "longitude": -120.964985403604,
        "metadata-url": "https://api.weather.gov/points/47.2953,-120.965",
        "trailhead": "Elbow Peak",
        "gridX": 76,
        "gridY": 188,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/76,188/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Ronald"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/155,147/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.8586,-117.3022",
        "gridId": "OTX",
        "latitude": 48.8586109986664,
        "longitude": -117.302222000484,
        "metadata-url": "https://api.weather.gov/points/48.8586,-117.3022",
        "trailhead": "Mill Pond Flume Trailhead",
        "gridX": 155,
        "gridY": 147,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/155,147/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC051",
        "radarStation": "KOTX",
        "city": "Metaline Falls"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/70,163/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.8722,-120.0033",
        "gridId": "OTX",
        "latitude": 48.8722399997848,
        "longitude": -120.00334999956,
        "metadata-url": "https://api.weather.gov/points/48.8722,-120.0033",
        "trailhead": "Chewuch Trailhead",
        "gridX": 70,
        "gridY": 163,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/70,163/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Loomis"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/160,89/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.1894,-121.3709",
        "gridId": "SEW",
        "latitude": 48.189383999233,
        "longitude": -121.370905000928,
        "metadata-url": "https://api.weather.gov/points/48.1894,-121.3709",
        "trailhead": "Meadow Mountain Trailhead",
        "gridX": 160,
        "gridY": 89,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/160,89/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/44,128/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.9247,-121.5811",
        "gridId": "PDT",
        "latitude": 45.9246899985809,
        "longitude": -121.581129999447,
        "metadata-url": "https://api.weather.gov/points/45.9247,-121.5811",
        "trailhead": "Trailhead: Monte Cristo-Upper",
        "gridX": 44,
        "gridY": 128,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/44,128/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC039",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      },
      {
        "id": "https://api.weather.gov/points/45.9247,-121.5811",
        "gridId": "PDT",
        "latitude": 45.9246899985809,
        "longitude": -121.581129999447,
        "metadata-url": "https://api.weather.gov/points/45.9247,-121.5811",
        "trailhead": "Trailhead: Monte Cristo-Lower",
        "gridX": 44,
        "gridY": 128,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/44,128/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC039",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/165,92/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.2704,-121.2366",
        "gridId": "SEW",
        "latitude": 48.2704049983955,
        "longitude": -121.236646000836,
        "metadata-url": "https://api.weather.gov/points/48.2704,-121.2366",
        "trailhead": "Suiattle River Trailhead",
        "gridX": 165,
        "gridY": 92,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/165,92/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      },
      {
        "id": "https://api.weather.gov/points/48.2704,-121.2366",
        "gridId": "SEW",
        "latitude": 48.2704049983955,
        "longitude": -121.236646000836,
        "metadata-url": "https://api.weather.gov/points/48.2704,-121.2366",
        "trailhead": "Green Mountain Trailhead",
        "gridX": 165,
        "gridY": 92,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/165,92/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/136,7/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.3911,-121.6179",
        "gridId": "SEW",
        "latitude": 46.3910943734191,
        "longitude": -121.61788550019,
        "metadata-url": "https://api.weather.gov/points/46.3911,-121.6179",
        "trailhead": "Hamilton Buttes",
        "gridX": 136,
        "gridY": 7,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/136,7/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/62,191/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3023,-121.4044",
        "gridId": "PDT",
        "latitude": 47.3022942979319,
        "longitude": -121.404385329113,
        "metadata-url": "https://api.weather.gov/points/47.3023,-121.4044",
        "trailhead": "Stirrup Lake",
        "gridX": 62,
        "gridY": 191,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/62,191/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/50,136/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1027,-121.4347",
        "gridId": "PDT",
        "latitude": 46.1026999991191,
        "longitude": -121.434699999981,
        "metadata-url": "https://api.weather.gov/points/46.1027,-121.4347",
        "trailhead": "Trailhead: Snipes Mountain",
        "gridX": 50,
        "gridY": 136,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/50,136/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      },
      {
        "id": "https://api.weather.gov/points/46.1027,-121.4347",
        "gridId": "PDT",
        "latitude": 46.1027299987029,
        "longitude": -121.434739999873,
        "metadata-url": "https://api.weather.gov/points/46.1027,-121.4347",
        "trailhead": "Trailhead: Pine-Way",
        "gridX": 50,
        "gridY": 136,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/50,136/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/153,125/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1406,-121.5977",
        "gridId": "PQR",
        "latitude": 46.1405999987776,
        "longitude": -121.597700000016,
        "metadata-url": "https://api.weather.gov/points/46.1406,-121.5977",
        "trailhead": "Trailhead: Stagman Ridge",
        "gridX": 153,
        "gridY": 125,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/153,125/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/160,76/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9149,-121.3127",
        "gridId": "SEW",
        "latitude": 47.914928999006,
        "longitude": -121.312682000268,
        "metadata-url": "https://api.weather.gov/points/47.9149,-121.3127",
        "trailhead": "Blanca Lake Trailhead",
        "gridX": 160,
        "gridY": 76,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/160,76/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Baring"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/160,125/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.9102,-121.5919",
        "gridId": "SEW",
        "latitude": 48.910209998196,
        "longitude": -121.59188499958,
        "metadata-url": "https://api.weather.gov/points/48.9102,-121.5919",
        "trailhead": "Hannegan Trailhead",
        "gridX": 160,
        "gridY": 125,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/160,125/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/46,121/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9378,-120.522",
        "gridId": "OTX",
        "latitude": 47.9378009991349,
        "longitude": -120.522003000427,
        "metadata-url": "https://api.weather.gov/points/47.9378,-120.522",
        "trailhead": "Box Canyon Viewpoint",
        "gridX": 46,
        "gridY": 121,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/46,121/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      },
      {
        "id": "https://api.weather.gov/points/47.9366,-120.5158",
        "gridId": "OTX",
        "latitude": 47.9366189991902,
        "longitude": -120.515810999427,
        "metadata-url": "https://api.weather.gov/points/47.9366,-120.5158",
        "trailhead": "Lake Creek Trailhead - Entiat",
        "gridX": 46,
        "gridY": 121,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/46,121/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/50,145/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4397,-120.5321",
        "gridId": "OTX",
        "latitude": 48.4397159484036,
        "longitude": -120.532139952233,
        "metadata-url": "https://api.weather.gov/points/48.4397,-120.5321",
        "trailhead": "Scatter Creek - Methow Valley RD Trailhead",
        "gridX": 50,
        "gridY": 145,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/50,145/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/156,136/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.365,-121.5657",
        "gridId": "PQR",
        "latitude": 46.3649721296016,
        "longitude": -121.565692988648,
        "metadata-url": "https://api.weather.gov/points/46.365,-121.5657",
        "trailhead": "Trailhead: Cody Day Use",
        "gridX": 156,
        "gridY": 136,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/156,136/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/104,161/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.8437,-119.9644",
        "gridId": "PDT",
        "latitude": 46.8436941716454,
        "longitude": -119.964385676438,
        "metadata-url": "https://api.weather.gov/points/46.8437,-119.9644",
        "trailhead": "John Wayne Trail - Army East",
        "gridX": 104,
        "gridY": 161,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/104,161/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ026",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KPDT",
        "city": "Vantage"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/129,154/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.9052999,-118.1406",
        "gridId": "OTX",
        "latitude": 48.9052539992206,
        "longitude": -118.140604999269,
        "metadata-url": "https://api.weather.gov/points/48.9053,-118.1406",
        "trailhead": "Pierre Lake",
        "gridX": 129,
        "gridY": 154,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/129,154/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC065",
        "radarStation": "KOTX",
        "city": "Orient"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/127,62/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5,-122.2149",
        "gridId": "SEW",
        "latitude": 47.4999943748745,
        "longitude": -122.214885151251,
        "metadata-url": "https://api.weather.gov/points/47.5,-122.2149",
        "trailhead": "Cedar River Trail",
        "gridX": 127,
        "gridY": 62,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/127,62/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ558",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Bryn Mawr-Skyway"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/82,66/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3840999,-123.6057",
        "gridId": "SEW",
        "latitude": 47.3840709993092,
        "longitude": -123.605746000194,
        "metadata-url": "https://api.weather.gov/points/47.3841,-123.6057",
        "trailhead": "Wynoochee Lakeshore Trailhead - Tacoma Power Dam",
        "gridX": 82,
        "gridY": 66,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/82,66/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Neilton"
      },
      {
        "id": "https://api.weather.gov/points/47.3924,-123.6037",
        "gridId": "SEW",
        "latitude": 47.3924469986879,
        "longitude": -123.603737999647,
        "metadata-url": "https://api.weather.gov/points/47.3924,-123.6037",
        "trailhead": "Working Forest Interpretive Trailhead",
        "gridX": 82,
        "gridY": 66,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/82,66/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Neilton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/115,146/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6974,-118.5125",
        "gridId": "OTX",
        "latitude": 48.697382366127,
        "longitude": -118.512516618055,
        "metadata-url": "https://api.weather.gov/points/48.6974,-118.5125",
        "trailhead": "Marcus Trailhead",
        "gridX": 115,
        "gridY": 146,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/115,146/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC019",
        "radarStation": "KOTX",
        "city": "Torboy"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/142,59/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4878,-121.7563",
        "gridId": "SEW",
        "latitude": 47.4877943255226,
        "longitude": -121.756285227673,
        "metadata-url": "https://api.weather.gov/points/47.4878,-121.7563",
        "trailhead": "Little Si",
        "gridX": 142,
        "gridY": 59,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/142,59/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "North Bend"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/145,110/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.7982,-121.74",
        "gridId": "PQR",
        "latitude": 45.7981909986248,
        "longitude": -121.739954000445,
        "metadata-url": "https://api.weather.gov/points/45.7982,-121.74",
        "trailhead": "Trailhead: Grassy Knoll",
        "gridX": 145,
        "gridY": 110,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/145,110/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Carson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/56,96/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8905,-124.5992",
        "gridId": "SEW",
        "latitude": 47.8904925091041,
        "longitude": -124.599151898427,
        "metadata-url": "https://api.weather.gov/points/47.8905,-124.5992",
        "trailhead": "Third Beach",
        "gridX": 56,
        "gridY": 96,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/56,96/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ516",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Forks"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/52,121/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9596,-120.328",
        "gridId": "OTX",
        "latitude": 47.9595989986983,
        "longitude": -120.32800299991,
        "metadata-url": "https://api.weather.gov/points/47.9596,-120.328",
        "trailhead": "Lone Peak Trailhead",
        "gridX": 52,
        "gridY": 121,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/52,121/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/56,98/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9181,-124.6027",
        "gridId": "SEW",
        "latitude": 47.918094619398,
        "longitude": -124.6026846802,
        "metadata-url": "https://api.weather.gov/points/47.9181,-124.6027",
        "trailhead": "Quillayute River Slough",
        "gridX": 56,
        "gridY": 98,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/56,98/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ516",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Forks"
      },
      {
        "id": "https://api.weather.gov/points/47.9186,-124.6036",
        "gridId": "SEW",
        "latitude": 47.9185854577388,
        "longitude": -124.603581795723,
        "metadata-url": "https://api.weather.gov/points/47.9186,-124.6036",
        "trailhead": "James Pond Nature Trail",
        "gridX": 56,
        "gridY": 98,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/56,98/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ516",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Forks"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/134,11/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.4666,-121.6934",
        "gridId": "SEW",
        "latitude": 46.466556998971,
        "longitude": -121.693351999647,
        "metadata-url": "https://api.weather.gov/points/46.4666,-121.6934",
        "trailhead": "Trailhead: Jackpot Lake",
        "gridX": 134,
        "gridY": 11,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/134,11/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/156,119/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.2864999,-117.1089",
        "gridId": "OTX",
        "latitude": 48.2864638759993,
        "longitude": -117.108879985307,
        "metadata-url": "https://api.weather.gov/points/48.2865,-117.1089",
        "trailhead": "Bead Lake",
        "gridX": 156,
        "gridY": 119,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/156,119/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC051",
        "radarStation": "KOTX",
        "city": "Newport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/56,97/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8982,-124.6238",
        "gridId": "SEW",
        "latitude": 47.8981946226159,
        "longitude": -124.623784681697,
        "metadata-url": "https://api.weather.gov/points/47.8982,-124.6238",
        "trailhead": "Second Beach",
        "gridX": 56,
        "gridY": 97,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/56,97/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ516",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Forks"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/67,195/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4022,-121.285",
        "gridId": "PDT",
        "latitude": 47.4021999991762,
        "longitude": -121.284999999736,
        "metadata-url": "https://api.weather.gov/points/47.4022,-121.285",
        "trailhead": "Rachel Lake Trailhead",
        "gridX": 67,
        "gridY": 195,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/67,195/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/75,71/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4647999,-123.8515",
        "gridId": "SEW",
        "latitude": 47.4648109985513,
        "longitude": -123.851538999817,
        "metadata-url": "https://api.weather.gov/points/47.4648,-123.8515",
        "trailhead": "Lake Lane Trailhead",
        "gridX": 75,
        "gridY": 71,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/75,71/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Amanda Park"
      },
      {
        "id": "https://api.weather.gov/points/47.4607,-123.8604",
        "gridId": "SEW",
        "latitude": 47.4606969989302,
        "longitude": -123.860425000036,
        "metadata-url": "https://api.weather.gov/points/47.4607,-123.8604",
        "trailhead": "Quinault Rain Forest Trailhead",
        "gridX": 75,
        "gridY": 71,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/75,71/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Amanda Park"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/136,26/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.786,-121.735",
        "gridId": "SEW",
        "latitude": 46.7859943626007,
        "longitude": -121.734985393177,
        "metadata-url": "https://api.weather.gov/points/46.786,-121.735",
        "trailhead": "Skyline Trail Loop",
        "gridX": 136,
        "gridY": 26,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/136,26/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/36,116/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7921,-120.794",
        "gridId": "OTX",
        "latitude": 47.7920999991336,
        "longitude": -120.794000000147,
        "metadata-url": "https://api.weather.gov/points/47.7921,-120.794",
        "trailhead": "Round Mountain Trailhead",
        "gridX": 36,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/36,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/152,72/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8085,-121.5349",
        "gridId": "SEW",
        "latitude": 47.8084719991139,
        "longitude": -121.534888999533,
        "metadata-url": "https://api.weather.gov/points/47.8085,-121.5349",
        "trailhead": "Heybrook Lookout",
        "gridX": 152,
        "gridY": 72,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/152,72/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Index"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/126,70/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.658,-122.2906",
        "gridId": "SEW",
        "latitude": 47.6579943748991,
        "longitude": -122.290585100252,
        "metadata-url": "https://api.weather.gov/points/47.658,-122.2906",
        "trailhead": "Union Bay Nature Area",
        "gridX": 126,
        "gridY": 70,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/126,70/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ558",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Hunts Point"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/154,132/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2766,-121.5992",
        "gridId": "PQR",
        "latitude": 46.2765943780049,
        "longitude": -121.599185528848,
        "metadata-url": "https://api.weather.gov/points/46.2766,-121.5992",
        "trailhead": "Takhlakh Lake Loop",
        "gridX": 154,
        "gridY": 132,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/154,132/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/143,21/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.7107,-121.4858",
        "gridId": "SEW",
        "latitude": 46.7106839995274,
        "longitude": -121.485780000673,
        "metadata-url": "https://api.weather.gov/points/46.7107,-121.4858",
        "trailhead": "Trailhead: Soda Springs Stock Trail",
        "gridX": 143,
        "gridY": 21,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/143,21/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      },
      {
        "id": "https://api.weather.gov/points/46.7043,-121.4802",
        "gridId": "SEW",
        "latitude": 46.7042889989993,
        "longitude": -121.48015299916,
        "metadata-url": "https://api.weather.gov/points/46.7043,-121.4802",
        "trailhead": "Trailhead: Soda Springs",
        "gridX": 143,
        "gridY": 21,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/143,21/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      },
      {
        "id": "https://api.weather.gov/points/46.7129,-121.4883",
        "gridId": "SEW",
        "latitude": 46.7129319991391,
        "longitude": -121.488330000047,
        "metadata-url": "https://api.weather.gov/points/46.7129,-121.4883",
        "trailhead": "Trailhead: Kincaid",
        "gridX": 143,
        "gridY": 21,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/143,21/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/85,72/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5123,-123.5451",
        "gridId": "SEW",
        "latitude": 47.512326998316,
        "longitude": -123.545089999473,
        "metadata-url": "https://api.weather.gov/points/47.5123,-123.5451",
        "trailhead": "Wynoochee Pass Trailhead",
        "gridX": 85,
        "gridY": 72,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/85,72/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Neilton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/91,66/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4188,-123.3294",
        "gridId": "SEW",
        "latitude": 47.418833998775,
        "longitude": -123.329358999831,
        "metadata-url": "https://api.weather.gov/points/47.4188,-123.3294",
        "trailhead": "Skokomish Lower South Fork Trailhead",
        "gridX": 91,
        "gridY": 66,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/91,66/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/36,104/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5445,-120.711",
        "gridId": "OTX",
        "latitude": 47.5444999987807,
        "longitude": -120.710999999775,
        "metadata-url": "https://api.weather.gov/points/47.5445,-120.711",
        "trailhead": "Snow Lakes Trailhead",
        "gridX": 36,
        "gridY": 104,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/36,104/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/159,127/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.9566,-121.643",
        "gridId": "SEW",
        "latitude": 48.9565549994559,
        "longitude": -121.642975999103,
        "metadata-url": "https://api.weather.gov/points/48.9566,-121.643",
        "trailhead": "Winchester Mountain Lookout",
        "gridX": 159,
        "gridY": 127,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/159,127/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      },
      {
        "id": "https://api.weather.gov/points/48.9521,-121.6356",
        "gridId": "SEW",
        "latitude": 48.9521489991716,
        "longitude": -121.635581999745,
        "metadata-url": "https://api.weather.gov/points/48.9521,-121.6356",
        "trailhead": "Twin Lakes Trailhead",
        "gridX": 159,
        "gridY": 127,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/159,127/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/153,101/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9044,-117.1245",
        "gridId": "OTX",
        "latitude": 47.9043938015968,
        "longitude": -117.12448594535,
        "metadata-url": "https://api.weather.gov/points/47.9044,-117.1245",
        "trailhead": "Mount Spokane - Trail 100",
        "gridX": 153,
        "gridY": 101,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/153,101/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC063",
        "radarStation": "KOTX",
        "city": "Green Bluff"
      },
      {
        "id": "https://api.weather.gov/points/47.9048,-117.1027",
        "gridId": "OTX",
        "latitude": 47.9047937995292,
        "longitude": -117.102685949608,
        "metadata-url": "https://api.weather.gov/points/47.9048,-117.1027",
        "trailhead": "Mount Spokane - Trail 130",
        "gridX": 153,
        "gridY": 101,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/153,101/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC063",
        "radarStation": "KOTX",
        "city": "Blanchard"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/43,142/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.3549,-120.7214",
        "gridId": "OTX",
        "latitude": 48.3548941643198,
        "longitude": -120.721385190375,
        "metadata-url": "https://api.weather.gov/points/48.3549,-120.7214",
        "trailhead": "Rainbow Loop",
        "gridX": 43,
        "gridY": 142,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/43,142/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/41,118/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8512,-120.661",
        "gridId": "OTX",
        "latitude": 47.8511999984853,
        "longitude": -120.660999998928,
        "metadata-url": "https://api.weather.gov/points/47.8512,-120.661",
        "trailhead": "Alder Ridge ORV Trailhead",
        "gridX": 41,
        "gridY": 118,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/41,118/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/148,116/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.68,-121.8973",
        "gridId": "SEW",
        "latitude": 48.6799669999199,
        "longitude": -121.897269000477,
        "metadata-url": "https://api.weather.gov/points/48.68,-121.8973",
        "trailhead": "Pioneer Camp Trailhead",
        "gridX": 148,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/148,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Hamilton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/49,135/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0932,-121.48",
        "gridId": "PDT",
        "latitude": 46.0931943770023,
        "longitude": -121.479985588016,
        "metadata-url": "https://api.weather.gov/points/46.0932,-121.48",
        "trailhead": "Gotchen Creek-Aiken Lava Bed East",
        "gridX": 49,
        "gridY": 135,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/49,135/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/118,126/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7528,-122.9043",
        "gridId": "SEW",
        "latitude": 48.7527943893693,
        "longitude": -122.904284727744,
        "metadata-url": "https://api.weather.gov/points/48.7528,-122.9043",
        "trailhead": "Sucia Island",
        "gridX": 118,
        "gridY": 126,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/118,126/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ001",
        "county": "https://api.weather.gov/zones/county/WAC055",
        "radarStation": "KATX",
        "city": "Birch Bay"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/139,116/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.8915,-121.9803",
        "gridId": "PQR",
        "latitude": 45.8914999993933,
        "longitude": -121.980299999381,
        "metadata-url": "https://api.weather.gov/points/45.8915,-121.9803",
        "trailhead": "Trailhead: Trapper Creek",
        "gridX": 139,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/139,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Carson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/144,35/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.0149,-121.5328",
        "gridId": "SEW",
        "latitude": 47.0148629987186,
        "longitude": -121.532750999494,
        "metadata-url": "https://api.weather.gov/points/47.0149,-121.5328",
        "trailhead": "Ranger Creek Trailhead",
        "gridX": 144,
        "gridY": 35,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/144,35/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      },
      {
        "id": "https://api.weather.gov/points/47.0088,-121.5326",
        "gridId": "SEW",
        "latitude": 47.0088209987465,
        "longitude": -121.532639000132,
        "metadata-url": "https://api.weather.gov/points/47.0088,-121.5326",
        "trailhead": "Suntop Trailhead",
        "gridX": 144,
        "gridY": 35,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/144,35/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/83,75/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5760999,-123.648",
        "gridId": "SEW",
        "latitude": 47.5760853507027,
        "longitude": -123.647965355198,
        "metadata-url": "https://api.weather.gov/points/47.5761,-123.648",
        "trailhead": "North Fork Quinault",
        "gridX": 83,
        "gridY": 75,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/83,75/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KLGX",
        "city": "Amanda Park"
      },
      {
        "id": "https://api.weather.gov/points/47.5678,-123.6553",
        "gridId": "SEW",
        "latitude": 47.5677538758326,
        "longitude": -123.655292453026,
        "metadata-url": "https://api.weather.gov/points/47.5678,-123.6553",
        "trailhead": "Irely Lake (Big Creek)",
        "gridX": 83,
        "gridY": 75,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/83,75/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KLGX",
        "city": "Amanda Park"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/132,68/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6370999,-122.1148",
        "gridId": "SEW",
        "latitude": 47.637094357073,
        "longitude": -122.114785134241,
        "metadata-url": "https://api.weather.gov/points/47.6371,-122.1148",
        "trailhead": "Ardmore Park Trails",
        "gridX": 132,
        "gridY": 68,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/132,68/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ556",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Redmond"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/100,156/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.8526,-119.0491",
        "gridId": "OTX",
        "latitude": 48.8525939500783,
        "longitude": -119.049085357618,
        "metadata-url": "https://api.weather.gov/points/48.8526,-119.0491",
        "trailhead": "Strawberry",
        "gridX": 100,
        "gridY": 156,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/100,156/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KOTX",
        "city": "Oroville"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/58,146/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4838,-120.2995",
        "gridId": "OTX",
        "latitude": 48.4838099992981,
        "longitude": -120.299500000121,
        "metadata-url": "https://api.weather.gov/points/48.4838,-120.2995",
        "trailhead": "Wolf Creek Trailhead",
        "gridX": 58,
        "gridY": 146,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/58,146/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/138,37/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.0241,-121.7339",
        "gridId": "SEW",
        "latitude": 47.0240943495889,
        "longitude": -121.733885339592,
        "metadata-url": "https://api.weather.gov/points/47.0241,-121.7339",
        "trailhead": "Clear West Peak",
        "gridX": 138,
        "gridY": 37,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/138,37/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/89,97/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0411,-123.59",
        "gridId": "SEW",
        "latitude": 48.0410844704764,
        "longitude": -123.589990378961,
        "metadata-url": "https://api.weather.gov/points/48.0411,-123.59",
        "trailhead": "Madison Creek Falls Nature Trail",
        "gridX": 89,
        "gridY": 97,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/89,97/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ514",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      },
      {
        "id": "https://api.weather.gov/points/48.0429,-123.6025",
        "gridId": "SEW",
        "latitude": 48.0429046147157,
        "longitude": -123.602501907118,
        "metadata-url": "https://api.weather.gov/points/48.0429,-123.6025",
        "trailhead": "West Elwha (Herrick Road)",
        "gridX": 89,
        "gridY": 97,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/89,97/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/135,116/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.8785,-122.0829",
        "gridId": "PQR",
        "latitude": 45.8784944524457,
        "longitude": -122.082885536699,
        "metadata-url": "https://api.weather.gov/points/45.8785,-122.0829",
        "trailhead": "West Crater",
        "gridX": 135,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/135,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Stevenson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/136,59/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4669,-121.9333",
        "gridId": "SEW",
        "latitude": 47.4668943461193,
        "longitude": -121.93328520367,
        "metadata-url": "https://api.weather.gov/points/47.4669,-121.9333",
        "trailhead": "Middle Tiger",
        "gridX": 136,
        "gridY": 59,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/136,59/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Mirrormont"
      },
      {
        "id": "https://api.weather.gov/points/47.4659,-121.9289",
        "gridId": "SEW",
        "latitude": 47.4658943456124,
        "longitude": -121.928885204509,
        "metadata-url": "https://api.weather.gov/points/47.4659,-121.9289",
        "trailhead": "Tiger Mountain Road",
        "gridX": 136,
        "gridY": 59,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/136,59/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Mirrormont"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/166,105/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5372,-121.2938",
        "gridId": "SEW",
        "latitude": 48.5371942186803,
        "longitude": -121.293785046996,
        "metadata-url": "https://api.weather.gov/points/48.5372,-121.2938",
        "trailhead": "Lookout Mountain Lookout near Marblemount",
        "gridX": 166,
        "gridY": 105,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/166,105/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "Marblemount"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/148,85/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0587,-121.736",
        "gridId": "SEW",
        "latitude": 48.0586942924299,
        "longitude": -121.735985093412,
        "metadata-url": "https://api.weather.gov/points/48.0587,-121.736",
        "trailhead": "Pinnacle Lake",
        "gridX": 148,
        "gridY": 85,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/148,85/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Verlot"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/37,107/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6001,-120.714",
        "gridId": "OTX",
        "latitude": 47.6001009989865,
        "longitude": -120.71399700039,
        "metadata-url": "https://api.weather.gov/points/47.6001,-120.714",
        "trailhead": "Castle Rock Trailhead",
        "gridX": 37,
        "gridY": 107,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/37,107/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/36,119/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8387,-120.799",
        "gridId": "OTX",
        "latitude": 47.8386999989306,
        "longitude": -120.799000000191,
        "metadata-url": "https://api.weather.gov/points/47.8387,-120.799",
        "trailhead": "Dirty Face Trailhead",
        "gridX": 36,
        "gridY": 119,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/36,119/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/138,12/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.5061,-121.5812",
        "gridId": "SEW",
        "latitude": 46.5061339991187,
        "longitude": -121.581243000461,
        "metadata-url": "https://api.weather.gov/points/46.5061,-121.5812",
        "trailhead": "Trailhead: Jordan Creek",
        "gridX": 138,
        "gridY": 12,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/138,12/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/174,111/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6855,-121.0925",
        "gridId": "SEW",
        "latitude": 48.6854941873752,
        "longitude": -121.092485043265,
        "metadata-url": "https://api.weather.gov/points/48.6855,-121.0925",
        "trailhead": "Thunder Creek",
        "gridX": 174,
        "gridY": 111,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/174,111/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Marblemount"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/87,68/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4489,-123.4905",
        "gridId": "SEW",
        "latitude": 47.4489149994774,
        "longitude": -123.490484000228,
        "metadata-url": "https://api.weather.gov/points/47.4489,-123.4905",
        "trailhead": "Church Creek East Trailhead",
        "gridX": 87,
        "gridY": 68,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/87,68/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/113,88/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9704,-122.8108",
        "gridId": "SEW",
        "latitude": 47.9703944166378,
        "longitude": -122.81078494204,
        "metadata-url": "https://api.weather.gov/points/47.9704,-122.8108",
        "trailhead": "Gibbs Lake",
        "gridX": 113,
        "gridY": 88,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/113,88/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ510",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Port Hadlock-Irondale"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/131,19/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1227,-117.385",
        "gridId": "OTX",
        "latitude": 46.1227029985821,
        "longitude": -117.385029999638,
        "metadata-url": "https://api.weather.gov/points/46.1227,-117.385",
        "trailhead": "Wenatchee Trailhead",
        "gridX": 131,
        "gridY": 19,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/131,19/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ031",
        "county": "https://api.weather.gov/zones/county/WAC003",
        "radarStation": "KPDT",
        "city": "Asotin"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/57,114/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.6783,-121.0922",
        "gridId": "PDT",
        "latitude": 45.6782943627035,
        "longitude": -121.092185738686,
        "metadata-url": "https://api.weather.gov/points/45.6783,-121.0922",
        "trailhead": "Columbia Hills State Park - Dalles Mountain Ranch",
        "gridX": 57,
        "gridY": 114,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/57,114/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ521",
        "county": "https://api.weather.gov/zones/county/WAC039",
        "radarStation": "KRTX",
        "city": "Dallesport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/144,56/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.442,-121.6722",
        "gridId": "SEW",
        "latitude": 47.4419943192439,
        "longitude": -121.672185252516,
        "metadata-url": "https://api.weather.gov/points/47.442,-121.6722",
        "trailhead": "Mount Washington",
        "gridX": 144,
        "gridY": 56,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/144,56/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Tanner"
      },
      {
        "id": "https://api.weather.gov/points/47.4381,-121.6611",
        "gridId": "SEW",
        "latitude": 47.4380943182052,
        "longitude": -121.661085255825,
        "metadata-url": "https://api.weather.gov/points/47.4381,-121.6611",
        "trailhead": "Deception Crags",
        "gridX": 144,
        "gridY": 56,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/144,56/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Tanner"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/140,138/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.3519999,-122.0625",
        "gridId": "PQR",
        "latitude": 46.3520149992405,
        "longitude": -122.062498999758,
        "metadata-url": "https://api.weather.gov/points/46.352,-122.0625",
        "trailhead": "Ryan Lake Interpretive Site",
        "gridX": 140,
        "gridY": 138,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/140,138/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Morton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/63,195/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3846,-121.3899",
        "gridId": "PDT",
        "latitude": 47.3846479993825,
        "longitude": -121.389878000119,
        "metadata-url": "https://api.weather.gov/points/47.3846,-121.3899",
        "trailhead": "Lake Keechelus Trailhead",
        "gridX": 63,
        "gridY": 195,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/63,195/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/105,138/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5067,-118.8076",
        "gridId": "OTX",
        "latitude": 48.5067410439771,
        "longitude": -118.807615550678,
        "metadata-url": "https://api.weather.gov/points/48.5067,-118.8076",
        "trailhead": "Fish Lake",
        "gridX": 105,
        "gridY": 138,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/105,138/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC019",
        "radarStation": "KOTX",
        "city": "Republic"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/68,176/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.0214,-121.1407",
        "gridId": "PDT",
        "latitude": 47.021373191368,
        "longitude": -121.140681864948,
        "metadata-url": "https://api.weather.gov/points/47.0214,-121.1407",
        "trailhead": "Longmire Meadow",
        "gridX": 68,
        "gridY": 176,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/68,176/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Cliffdell"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/147,138/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6544,-117.4842",
        "gridId": "OTX",
        "latitude": 48.6544439986727,
        "longitude": -117.484167000247,
        "metadata-url": "https://api.weather.gov/points/48.6544,-117.4842",
        "trailhead": "Frater Lake Trailhead",
        "gridX": 147,
        "gridY": 138,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/147,138/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC051",
        "radarStation": "KOTX",
        "city": "Ione"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/115,145/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6762,-118.5088",
        "gridId": "OTX",
        "latitude": 48.6762418022715,
        "longitude": -118.508829476396,
        "metadata-url": "https://api.weather.gov/points/48.6762,-118.5088",
        "trailhead": "Timber Ridge Trailhead",
        "gridX": 115,
        "gridY": 145,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/115,145/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC019",
        "radarStation": "KOTX",
        "city": "Torboy"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/105,86/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8866,-123.0419",
        "gridId": "SEW",
        "latitude": 47.886637999732,
        "longitude": -123.041881999844,
        "metadata-url": "https://api.weather.gov/points/47.8866,-123.0419",
        "trailhead": "Little Quilcene Trailhead",
        "gridX": 105,
        "gridY": 86,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/105,86/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Quilcene"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/81,94/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9551,-123.8353",
        "gridId": "SEW",
        "latitude": 47.955094531512,
        "longitude": -123.8352847859,
        "metadata-url": "https://api.weather.gov/points/47.9551,-123.8353",
        "trailhead": "Sol Duc River",
        "gridX": 81,
        "gridY": 94,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/81,94/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/34,116/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7727999,-120.832",
        "gridId": "OTX",
        "latitude": 47.7727999988142,
        "longitude": -120.832000000855,
        "metadata-url": "https://api.weather.gov/points/47.7728,-120.832",
        "trailhead": "Lake Ethel Trailhead",
        "gridX": 34,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/34,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/95,153/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7709,-119.1838",
        "gridId": "OTX",
        "latitude": 48.7709249989891,
        "longitude": -119.183757999842,
        "metadata-url": "https://api.weather.gov/points/48.7709,-119.1838",
        "trailhead": "4th of July Trailhead",
        "gridX": 95,
        "gridY": 153,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/95,153/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KOTX",
        "city": "Tonasket"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/133,25/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.7501,-121.814",
        "gridId": "SEW",
        "latitude": 46.7500943737818,
        "longitude": -121.813985388423,
        "metadata-url": "https://api.weather.gov/points/46.7501,-121.814",
        "trailhead": "Rampart Ridge",
        "gridX": 133,
        "gridY": 25,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/133,25/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KRTX",
        "city": "Ashford"
      },
      {
        "id": "https://api.weather.gov/points/46.7485,-121.8078",
        "gridId": "SEW",
        "latitude": 46.7484943729417,
        "longitude": -121.807785390765,
        "metadata-url": "https://api.weather.gov/points/46.7485,-121.8078",
        "trailhead": "Eagle Peak",
        "gridX": 133,
        "gridY": 25,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/133,25/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Ashford"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/80,163/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.607,-124.0438",
        "gridId": "PQR",
        "latitude": 46.6069946191994,
        "longitude": -124.043785073979,
        "metadata-url": "https://api.weather.gov/points/46.607,-124.0438",
        "trailhead": "Leadbetter Point State Park - Dune Forest Loop",
        "gridX": 80,
        "gridY": 163,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/80,163/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ021",
        "county": "https://api.weather.gov/zones/county/WAC049",
        "radarStation": "KLGX",
        "city": "Bay Center"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/156,82/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.027,-121.4447",
        "gridId": "SEW",
        "latitude": 48.0269942625381,
        "longitude": -121.444685149767,
        "metadata-url": "https://api.weather.gov/points/48.027,-121.4447",
        "trailhead": "Monte Cristo Ghost Town",
        "gridX": 156,
        "gridY": 82,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/156,82/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Index"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/88,188/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3349,-120.5808",
        "gridId": "PDT",
        "latitude": 47.334894207631,
        "longitude": -120.5807854594,
        "metadata-url": "https://api.weather.gov/points/47.3349,-120.5808",
        "trailhead": "Haney Meadow Loop Snowshoe",
        "gridX": 88,
        "gridY": 188,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/88,188/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Wenatchee"
      },
      {
        "id": "https://api.weather.gov/points/47.3307,-120.601",
        "gridId": "PDT",
        "latitude": 47.330694210407,
        "longitude": -120.600985456827,
        "metadata-url": "https://api.weather.gov/points/47.3307,-120.601",
        "trailhead": "Diamond Head  Snowshoe",
        "gridX": 88,
        "gridY": 188,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/88,188/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Wenatchee"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/100,73/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5954,-123.1229",
        "gridId": "SEW",
        "latitude": 47.5953944700522,
        "longitude": -123.122884984568,
        "metadata-url": "https://api.weather.gov/points/47.5954,-123.1229",
        "trailhead": "Living Legacy Interpretive Trail",
        "gridX": 100,
        "gridY": 73,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/100,73/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KATX",
        "city": "Brinnon"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/129,12/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.4605,-121.857",
        "gridId": "SEW",
        "latitude": 46.4605179985113,
        "longitude": -121.856984000034,
        "metadata-url": "https://api.weather.gov/points/46.4605,-121.857",
        "trailhead": "Interpretive Site: Layser Cave",
        "gridX": 129,
        "gridY": 12,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/129,12/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/159,84/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0700999,-121.3753",
        "gridId": "SEW",
        "latitude": 48.0701359999097,
        "longitude": -121.3752790004,
        "metadata-url": "https://api.weather.gov/points/48.0701,-121.3753",
        "trailhead": "Bedal Creek Trailhead",
        "gridX": 159,
        "gridY": 84,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/159,84/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/49,158/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6983,-120.6368",
        "gridId": "OTX",
        "latitude": 48.6982941362606,
        "longitude": -120.636785117454,
        "metadata-url": "https://api.weather.gov/points/48.6983,-120.6368",
        "trailhead": "Trout Creek",
        "gridX": 49,
        "gridY": 158,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/49,158/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/90,67/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4459,-123.3865",
        "gridId": "SEW",
        "latitude": 47.4458549992108,
        "longitude": -123.386547999802,
        "metadata-url": "https://api.weather.gov/points/47.4459,-123.3865",
        "trailhead": "Skokomish Lower South Fork Camp Comfort Trailhead",
        "gridX": 90,
        "gridY": 67,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/90,67/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/137,9/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.4393,-121.6029",
        "gridId": "SEW",
        "latitude": 46.4392943688859,
        "longitude": -121.602885492069,
        "metadata-url": "https://api.weather.gov/points/46.4393,-121.6029",
        "trailhead": "Wobbly Creek",
        "gridX": 137,
        "gridY": 9,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/137,9/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/61,160/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.6578,-121.238",
        "gridId": "PDT",
        "latitude": 46.6577999992911,
        "longitude": -121.238000000293,
        "metadata-url": "https://api.weather.gov/points/46.6578,-121.238",
        "trailhead": "Andy Creek Trailhead",
        "gridX": 61,
        "gridY": 160,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/61,160/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Nile"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/92,65/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.412,-123.3217",
        "gridId": "SEW",
        "latitude": 47.4120249994172,
        "longitude": -123.321727999693,
        "metadata-url": "https://api.weather.gov/points/47.412,-123.3217",
        "trailhead": "Brown Creek Interpretive Trailhead",
        "gridX": 92,
        "gridY": 65,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/92,65/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KLGX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/128,17/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0815,-117.4644",
        "gridId": "OTX",
        "latitude": 46.0815189986839,
        "longitude": -117.46442299915,
        "metadata-url": "https://api.weather.gov/points/46.0815,-117.4644",
        "trailhead": "Saddle Spring Trailhead",
        "gridX": 128,
        "gridY": 17,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/128,17/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ031",
        "county": "https://api.weather.gov/zones/county/WAC003",
        "radarStation": "KPDT",
        "city": "Asotin"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/152,54/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4281999,-121.4136",
        "gridId": "SEW",
        "latitude": 47.4282169987807,
        "longitude": -121.413643999536,
        "metadata-url": "https://api.weather.gov/points/47.4282,-121.4136",
        "trailhead": "Pacific Crest - Snoqualmie North Trailhead",
        "gridX": 152,
        "gridY": 54,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/152,54/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      },
      {
        "id": "https://api.weather.gov/points/47.4286,-121.414",
        "gridId": "SEW",
        "latitude": 47.4286099990202,
        "longitude": -121.414000000063,
        "metadata-url": "https://api.weather.gov/points/47.4286,-121.414",
        "trailhead": "Pacific Crest - Snoqualmie Pass Trailhead",
        "gridX": 152,
        "gridY": 54,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/152,54/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/51,143/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4056,-120.4897",
        "gridId": "OTX",
        "latitude": 48.4055809993099,
        "longitude": -120.489703000033,
        "metadata-url": "https://api.weather.gov/points/48.4056,-120.4897",
        "trailhead": "Reynolds Creek Trailhead",
        "gridX": 51,
        "gridY": 143,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/51,143/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      },
      {
        "id": "https://api.weather.gov/points/48.3979,-120.4689",
        "gridId": "OTX",
        "latitude": 48.3978989991273,
        "longitude": -120.468875000347,
        "metadata-url": "https://api.weather.gov/points/48.3979,-120.4689",
        "trailhead": "Williams Creek Trailhead",
        "gridX": 51,
        "gridY": 143,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/51,143/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/142,31/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.9174999,-121.5878",
        "gridId": "SEW",
        "latitude": 46.9174943399457,
        "longitude": -121.587785387802,
        "metadata-url": "https://api.weather.gov/points/46.9175,-121.5878",
        "trailhead": "Palisades Lakes",
        "gridX": 142,
        "gridY": 31,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/142,31/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/124,94/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.1322,-122.5031",
        "gridId": "SEW",
        "latitude": 48.1321943741752,
        "longitude": -122.503084950278,
        "metadata-url": "https://api.weather.gov/points/48.1322,-122.5031",
        "trailhead": "Cama Beach State Park",
        "gridX": 124,
        "gridY": 94,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/124,94/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ510",
        "county": "https://api.weather.gov/zones/county/WAC029",
        "radarStation": "KATX",
        "city": "Camano"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/95,89/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9184,-123.3821",
        "gridId": "SEW",
        "latitude": 47.9184135361012,
        "longitude": -123.382138574123,
        "metadata-url": "https://api.weather.gov/points/47.9184,-123.3821",
        "trailhead": "Obstruction Point",
        "gridX": 95,
        "gridY": 89,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/95,89/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles East"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/60,82/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6129,-124.3762",
        "gridId": "SEW",
        "latitude": 47.6128946075045,
        "longitude": -124.37618478892,
        "metadata-url": "https://api.weather.gov/points/47.6129,-124.3762",
        "trailhead": "Kalaloch - Browns Point",
        "gridX": 60,
        "gridY": 82,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/60,82/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ516",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KLGX",
        "city": "Queets"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/61,118/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9355,-120.0365",
        "gridId": "OTX",
        "latitude": 47.9354789992958,
        "longitude": -120.036539001006,
        "metadata-url": "https://api.weather.gov/points/47.9355,-120.0365",
        "trailhead": "Echo Ridge Recreation Area Trailheads",
        "gridX": 61,
        "gridY": 118,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/61,118/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ041",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KOTX",
        "city": "Chelan"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/60,85/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6749,-124.3919",
        "gridId": "SEW",
        "latitude": 47.6749100248152,
        "longitude": -124.391887153875,
        "metadata-url": "https://api.weather.gov/points/47.6749,-124.3919",
        "trailhead": "Kalaloch Big Cedar Nature Trail",
        "gridX": 60,
        "gridY": 85,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/60,85/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ516",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KLGX",
        "city": "Queets"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/157,133/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.3084,-121.5403",
        "gridId": "PQR",
        "latitude": 46.3084449986762,
        "longitude": -121.54030000077,
        "metadata-url": "https://api.weather.gov/points/46.3084,-121.5403",
        "trailhead": "Trailhead: Muddy Meadows",
        "gridX": 157,
        "gridY": 133,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/157,133/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/125,24/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.203,-117.5749",
        "gridId": "OTX",
        "latitude": 46.2030399989681,
        "longitude": -117.574933000388,
        "metadata-url": "https://api.weather.gov/points/46.203,-117.5749",
        "trailhead": "Clearwater Lookout Cabin",
        "gridX": 125,
        "gridY": 24,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/125,24/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ031",
        "county": "https://api.weather.gov/zones/county/WAC023",
        "radarStation": "KPDT",
        "city": "Pomeroy"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/61,97/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4986,-119.9117",
        "gridId": "OTX",
        "latitude": 47.4985941255581,
        "longitude": -119.911685535882,
        "metadata-url": "https://api.weather.gov/points/47.4986,-119.9117",
        "trailhead": "Douglas Creek Canyon - North",
        "gridX": 61,
        "gridY": 97,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/61,97/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ044",
        "county": "https://api.weather.gov/zones/county/WAC017",
        "radarStation": "KOTX",
        "city": "Waterville"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/135,104/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.6214,-122.0233",
        "gridId": "PQR",
        "latitude": 45.6213944615747,
        "longitude": -122.023285600152,
        "metadata-url": "https://api.weather.gov/points/45.6214,-122.0233",
        "trailhead": "River To Rock Trail",
        "gridX": 135,
        "gridY": 104,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/135,104/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ045",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "North Bonneville"
      },
      {
        "id": "https://api.weather.gov/points/45.6291,-122.0219",
        "gridId": "PQR",
        "latitude": 45.6290944602604,
        "longitude": -122.021885598485,
        "metadata-url": "https://api.weather.gov/points/45.6291,-122.0219",
        "trailhead": "Beacon Rock",
        "gridX": 135,
        "gridY": 104,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/135,104/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ045",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "North Bonneville"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/147,39/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.1057,-121.4751",
        "gridId": "SEW",
        "latitude": 47.1056969989891,
        "longitude": -121.475062999682,
        "metadata-url": "https://api.weather.gov/points/47.1057,-121.4751",
        "trailhead": "Greenwater Lakes Trailhead",
        "gridX": 147,
        "gridY": 39,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/147,39/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/47,125/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0172,-120.4959",
        "gridId": "OTX",
        "latitude": 48.0171929993591,
        "longitude": -120.495925000587,
        "metadata-url": "https://api.weather.gov/points/48.0172,-120.4959",
        "trailhead": "Pyramid Mountain Trailhead",
        "gridX": 47,
        "gridY": 125,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/47,125/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/103,79/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7403,-123.0658",
        "gridId": "SEW",
        "latitude": 47.7402589995911,
        "longitude": -123.065764000464,
        "metadata-url": "https://api.weather.gov/points/47.7403,-123.0658",
        "trailhead": "Tunnel Creek via Dosewallips Road Trailhead",
        "gridX": 103,
        "gridY": 79,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/103,79/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Brinnon"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/82,190/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3686,-120.784",
        "gridId": "PDT",
        "latitude": 47.3685999991303,
        "longitude": -120.783999999728,
        "metadata-url": "https://api.weather.gov/points/47.3686,-120.784",
        "trailhead": "Miller-Bear Trailhead",
        "gridX": 82,
        "gridY": 190,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/82,190/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Cle Elum"
      },
      {
        "id": "https://api.weather.gov/points/47.3681,-120.804",
        "gridId": "PDT",
        "latitude": 47.368099999249,
        "longitude": -120.804000000249,
        "metadata-url": "https://api.weather.gov/points/47.3681,-120.804",
        "trailhead": "Stafford Creek Trailhead",
        "gridX": 82,
        "gridY": 190,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/82,190/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Cle Elum"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/166,92/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.259,-121.2238",
        "gridId": "SEW",
        "latitude": 48.2590129993799,
        "longitude": -121.223793999008,
        "metadata-url": "https://api.weather.gov/points/48.259,-121.2238",
        "trailhead": "Downey Creek Trailhead",
        "gridX": 166,
        "gridY": 92,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/166,92/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Darrington"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/73,177/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.05,-120.976",
        "gridId": "PDT",
        "latitude": 47.0499999992672,
        "longitude": -120.975999999224,
        "metadata-url": "https://api.weather.gov/points/47.05,-120.976",
        "trailhead": "Shoestring Trailhead",
        "gridX": 73,
        "gridY": 177,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/73,177/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Cliffdell"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/108,80/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7769,-122.9157",
        "gridId": "SEW",
        "latitude": 47.7769409983808,
        "longitude": -122.91568000006,
        "metadata-url": "https://api.weather.gov/points/47.7769,-122.9157",
        "trailhead": "Mt. Walker Lower Trailhead",
        "gridX": 108,
        "gridY": 80,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/108,80/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ511",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Quilcene"
      },
      {
        "id": "https://api.weather.gov/points/47.7894,-122.9283",
        "gridId": "SEW",
        "latitude": 47.7894439994908,
        "longitude": -122.928332999739,
        "metadata-url": "https://api.weather.gov/points/47.7894,-122.9283",
        "trailhead": "Falls View Canyon Trailhead/Picnic Area",
        "gridX": 108,
        "gridY": 80,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/108,80/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ511",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Quilcene"
      },
      {
        "id": "https://api.weather.gov/points/47.7886,-122.9062",
        "gridId": "SEW",
        "latitude": 47.7886109989678,
        "longitude": -122.906167999376,
        "metadata-url": "https://api.weather.gov/points/47.7886,-122.9062",
        "trailhead": "Mt. Walker Viewpoint",
        "gridX": 108,
        "gridY": 80,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/108,80/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ511",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Quilcene"
      },
      {
        "id": "https://api.weather.gov/points/47.7710999,-122.9163",
        "gridId": "SEW",
        "latitude": 47.7710869994551,
        "longitude": -122.916328000234,
        "metadata-url": "https://api.weather.gov/points/47.7711,-122.9163",
        "trailhead": "Elbow Creek Trailhead",
        "gridX": 108,
        "gridY": 80,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/108,80/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ511",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Quilcene"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/126,65/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5499,-122.2577",
        "gridId": "SEW",
        "latitude": 47.549894377202,
        "longitude": -122.257685131293,
        "metadata-url": "https://api.weather.gov/points/47.5499,-122.2577",
        "trailhead": "Seward Park",
        "gridX": 126,
        "gridY": 65,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/126,65/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ558",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Mercer Island"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/73,101/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0647,-124.1155",
        "gridId": "SEW",
        "latitude": 48.0647412446633,
        "longitude": -124.115523818913,
        "metadata-url": "https://api.weather.gov/points/48.0647,-124.1155",
        "trailhead": "Pioneer'sPathNatureTrailhead",
        "gridX": 73,
        "gridY": 101,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/73,101/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Clallam Bay"
      },
      {
        "id": "https://api.weather.gov/points/48.0608999,-124.1087",
        "gridId": "SEW",
        "latitude": 48.0609449987913,
        "longitude": -124.108682000967,
        "metadata-url": "https://api.weather.gov/points/48.0609,-124.1087",
        "trailhead": "Camp Creek Olympic Discovery Trailhead",
        "gridX": 73,
        "gridY": 101,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/73,101/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Clallam Bay"
      },
      {
        "id": "https://api.weather.gov/points/48.0686,-124.1085",
        "gridId": "SEW",
        "latitude": 48.0685849988684,
        "longitude": -124.108452999259,
        "metadata-url": "https://api.weather.gov/points/48.0686,-124.1085",
        "trailhead": "Kloshe Nanitch Trailhead",
        "gridX": 73,
        "gridY": 101,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/73,101/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Clallam Bay"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/129,104/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.589,-122.1787",
        "gridId": "PQR",
        "latitude": 45.5889944793246,
        "longitude": -122.178685581481,
        "metadata-url": "https://api.weather.gov/points/45.589,-122.1787",
        "trailhead": "Cape Horn",
        "gridX": 129,
        "gridY": 104,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/129,104/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ045",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Washougal"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/36,118/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8230999,-120.81",
        "gridId": "OTX",
        "latitude": 47.8230999995034,
        "longitude": -120.809999999691,
        "metadata-url": "https://api.weather.gov/points/47.8231,-120.81",
        "trailhead": "Hidden Lake Trailhead",
        "gridX": 36,
        "gridY": 118,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/36,118/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/65,159/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.783,-120.1613",
        "gridId": "OTX",
        "latitude": 48.7829979992796,
        "longitude": -120.161281999427,
        "metadata-url": "https://api.weather.gov/points/48.783,-120.1613",
        "trailhead": "Lake Creek Trailhead",
        "gridX": 65,
        "gridY": 159,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/65,159/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/58,156/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.5557,-121.312",
        "gridId": "PDT",
        "latitude": 46.5556999990994,
        "longitude": -121.312000000329,
        "metadata-url": "https://api.weather.gov/points/46.5557,-121.312",
        "trailhead": "Section 3 Lake Trailhead",
        "gridX": 58,
        "gridY": 156,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/58,156/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/75,74/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5108,-123.8888",
        "gridId": "SEW",
        "latitude": 47.5107529991547,
        "longitude": -123.888799000095,
        "metadata-url": "https://api.weather.gov/points/47.5108,-123.8888",
        "trailhead": "Higley Peak Trailhead",
        "gridX": 75,
        "gridY": 74,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/75,74/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Amanda Park"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/43,91/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3053,-120.4361",
        "gridId": "OTX",
        "latitude": 47.3053019993568,
        "longitude": -120.436104000638,
        "metadata-url": "https://api.weather.gov/points/47.3053,-120.4361",
        "trailhead": "Mission Ridge Trailhead",
        "gridX": 43,
        "gridY": 91,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/43,91/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "South Wenatchee"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/139,118/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.9271,-121.9805",
        "gridId": "PQR",
        "latitude": 45.9270629998264,
        "longitude": -121.980476001035,
        "metadata-url": "https://api.weather.gov/points/45.9271,-121.9805",
        "trailhead": "Trailhead: Big Hollow",
        "gridX": 139,
        "gridY": 118,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/139,118/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Carson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/55,172/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.8722,-121.516",
        "gridId": "PDT",
        "latitude": 46.8721999993384,
        "longitude": -121.515999999691,
        "metadata-url": "https://api.weather.gov/points/46.8722,-121.516",
        "trailhead": "Chinook Pass Overlook Trailhead",
        "gridX": 55,
        "gridY": 172,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/55,172/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KATX",
        "city": "Greenwater"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/143,20/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.6958,-121.4807",
        "gridId": "SEW",
        "latitude": 46.6958379996128,
        "longitude": -121.480699999681,
        "metadata-url": "https://api.weather.gov/points/46.6958,-121.4807",
        "trailhead": "Trailhead: Cortright",
        "gridX": 143,
        "gridY": 20,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/143,20/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/99,72/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5855,-123.1371",
        "gridId": "SEW",
        "latitude": 47.585485998266,
        "longitude": -123.137082999845,
        "metadata-url": "https://api.weather.gov/points/47.5855,-123.1371",
        "trailhead": "Jefferson Ridge Trailhead",
        "gridX": 99,
        "gridY": 72,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/99,72/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KATX",
        "city": "Brinnon"
      },
      {
        "id": "https://api.weather.gov/points/47.5711,-123.1328",
        "gridId": "SEW",
        "latitude": 47.5711109997819,
        "longitude": -123.13277799952,
        "metadata-url": "https://api.weather.gov/points/47.5711,-123.1328",
        "trailhead": "Elk Lake  Lower Trailhead",
        "gridX": 99,
        "gridY": 72,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/99,72/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC045",
        "radarStation": "KATX",
        "city": "Hoodsport"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/73,194/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4152,-121.081",
        "gridId": "PDT",
        "latitude": 47.4151942569806,
        "longitude": -121.080985356412,
        "metadata-url": "https://api.weather.gov/points/47.4152,-121.081",
        "trailhead": "Davis Peak",
        "gridX": 73,
        "gridY": 194,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/73,194/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Roslyn"
      },
      {
        "id": "https://api.weather.gov/points/47.4095,-121.104",
        "gridId": "PDT",
        "latitude": 47.4095279990382,
        "longitude": -121.104028999885,
        "metadata-url": "https://api.weather.gov/points/47.4095,-121.104",
        "trailhead": "Salmon La Sac Trailhead",
        "gridX": 73,
        "gridY": 194,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/73,194/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Roslyn"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/139,136/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2967,-122.0741",
        "gridId": "PQR",
        "latitude": 46.296665999236,
        "longitude": -122.074138999942,
        "metadata-url": "https://api.weather.gov/points/46.2967,-122.0741",
        "trailhead": "Miners Car Interpretive Site",
        "gridX": 139,
        "gridY": 136,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/139,136/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Morton"
      },
      {
        "id": "https://api.weather.gov/points/46.296,-122.0771",
        "gridId": "PQR",
        "latitude": 46.2959699990581,
        "longitude": -122.077136000436,
        "metadata-url": "https://api.weather.gov/points/46.296,-122.0771",
        "trailhead": "Meta Lake Interpretive Site",
        "gridX": 139,
        "gridY": 136,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/139,136/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Morton"
      },
      {
        "id": "https://api.weather.gov/points/46.3045,-122.0822",
        "gridId": "PQR",
        "latitude": 46.3044739985677,
        "longitude": -122.082194000754,
        "metadata-url": "https://api.weather.gov/points/46.3045,-122.0822",
        "trailhead": "Norway Pass Trailhead",
        "gridX": 139,
        "gridY": 136,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/139,136/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Morton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/163,65/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7067,-121.1578",
        "gridId": "SEW",
        "latitude": 47.7066539987565,
        "longitude": -121.157757999257,
        "metadata-url": "https://api.weather.gov/points/47.7067,-121.1578",
        "trailhead": "Surprise Creek Trailhead",
        "gridX": 163,
        "gridY": 65,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/163,65/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/134,62/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5296,-121.9956",
        "gridId": "SEW",
        "latitude": 47.5295943501788,
        "longitude": -121.99558517894,
        "metadata-url": "https://api.weather.gov/points/47.5296,-121.9956",
        "trailhead": "West Tiger 3",
        "gridX": 134,
        "gridY": 62,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/134,62/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ556",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Issaquah"
      },
      {
        "id": "https://api.weather.gov/points/47.5295,-122.0087",
        "gridId": "SEW",
        "latitude": 47.5294943509784,
        "longitude": -122.008685176518,
        "metadata-url": "https://api.weather.gov/points/47.5295,-122.0087",
        "trailhead": "Bonneville Trail",
        "gridX": 134,
        "gridY": 62,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/134,62/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ556",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Issaquah"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/64,172/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.9174999,-121.2309",
        "gridId": "PDT",
        "latitude": 46.9174943014642,
        "longitude": -121.230885446734,
        "metadata-url": "https://api.weather.gov/points/46.9175,-121.2309",
        "trailhead": "Goat Peak Snowshoe",
        "gridX": 64,
        "gridY": 172,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/64,172/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KATX",
        "city": "Cliffdell"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/170,116/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1619,-117.7292",
        "gridId": "PDT",
        "latitude": 46.1618839993015,
        "longitude": -117.729201000326,
        "metadata-url": "https://api.weather.gov/points/46.1619,-117.7292",
        "trailhead": "Meadow Creek Trailhead",
        "gridX": 170,
        "gridY": 116,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/170,116/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ030",
        "county": "https://api.weather.gov/zones/county/WAC013",
        "radarStation": "KPDT",
        "city": "Dayton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/95,155/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.8023,-119.1987",
        "gridId": "OTX",
        "latitude": 48.8022549991018,
        "longitude": -119.198748999774,
        "metadata-url": "https://api.weather.gov/points/48.8023,-119.1987",
        "trailhead": "Antoine Trailhead",
        "gridX": 95,
        "gridY": 155,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/95,155/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KOTX",
        "city": "Tonasket"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/34,106/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5781,-120.796",
        "gridId": "OTX",
        "latitude": 47.5780999989964,
        "longitude": -120.795999999831,
        "metadata-url": "https://api.weather.gov/points/47.5781,-120.796",
        "trailhead": "Fourth of July Trailhead",
        "gridX": 34,
        "gridY": 106,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/34,106/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/51,144/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4144,-120.4853",
        "gridId": "OTX",
        "latitude": 48.4144399989788,
        "longitude": -120.4852599992,
        "metadata-url": "https://api.weather.gov/points/48.4144,-120.4853",
        "trailhead": "Slate Creek Trailhead",
        "gridX": 51,
        "gridY": 144,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/51,144/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/130,120/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7008,-122.4893",
        "gridId": "SEW",
        "latitude": 48.7007943450883,
        "longitude": -122.489284808509,
        "metadata-url": "https://api.weather.gov/points/48.7008,-122.4893",
        "trailhead": "Chuckanut Ridge Trail",
        "gridX": 130,
        "gridY": 120,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/130,120/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ503",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Bellingham"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/139,93/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.6964,-117.495",
        "gridId": "OTX",
        "latitude": 47.6963938555294,
        "longitude": -117.494985924885,
        "metadata-url": "https://api.weather.gov/points/47.6964,-117.495",
        "trailhead": "Riverside State Park - Bowl and Pitcher Snowshoe",
        "gridX": 139,
        "gridY": 93,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/139,93/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ036",
        "county": "https://api.weather.gov/zones/county/WAC063",
        "radarStation": "KOTX",
        "city": "Spokane"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/45,121/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9306,-120.5336",
        "gridId": "OTX",
        "latitude": 47.9305759992548,
        "longitude": -120.533577999744,
        "metadata-url": "https://api.weather.gov/points/47.9306,-120.5336",
        "trailhead": "Middle Tommy Trailhead",
        "gridX": 45,
        "gridY": 121,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/45,121/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Manson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/163,110/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0021,-117.9023",
        "gridId": "PDT",
        "latitude": 46.0020779991211,
        "longitude": -117.902284000642,
        "metadata-url": "https://api.weather.gov/points/46.0021,-117.9023",
        "trailhead": "Indian Trailhead",
        "gridX": 163,
        "gridY": 110,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/163,110/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ030",
        "county": "https://api.weather.gov/zones/county/WAC013",
        "radarStation": "KPDT",
        "city": "Dixie"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/158,83/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0535,-121.4126",
        "gridId": "SEW",
        "latitude": 48.0534929994696,
        "longitude": -121.412575999846,
        "metadata-url": "https://api.weather.gov/points/48.0535,-121.4126",
        "trailhead": "Elliot Creek/Goat Lake Trailhead",
        "gridX": 158,
        "gridY": 83,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/158,83/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC061",
        "radarStation": "KATX",
        "city": "Verlot"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/127,106/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.3853,-122.5006",
        "gridId": "SEW",
        "latitude": 48.3852943616956,
        "longitude": -122.500584887937,
        "metadata-url": "https://api.weather.gov/points/48.3853,-122.5006",
        "trailhead": "Pioneer Park",
        "gridX": 127,
        "gridY": 106,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/127,106/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ506",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "La Conner"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/53,141/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.3583,-120.4166",
        "gridId": "OTX",
        "latitude": 48.3583409990116,
        "longitude": -120.416582999503,
        "metadata-url": "https://api.weather.gov/points/48.3583,-120.4166",
        "trailhead": "War Creek Trailhead",
        "gridX": 53,
        "gridY": 141,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/53,141/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/78,194/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.4216,-120.9374",
        "gridId": "PDT",
        "latitude": 47.4215942405352,
        "longitude": -120.937385378376,
        "metadata-url": "https://api.weather.gov/points/47.4216,-120.9374",
        "trailhead": "Eldorado and Turnpike Passes",
        "gridX": 78,
        "gridY": 194,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/78,194/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Ronald"
      },
      {
        "id": "https://api.weather.gov/points/47.4174999,-120.937",
        "gridId": "PDT",
        "latitude": 47.4174919985869,
        "longitude": -120.937019000148,
        "metadata-url": "https://api.weather.gov/points/47.4175,-120.937",
        "trailhead": "De Roux Trailhead",
        "gridX": 78,
        "gridY": 194,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/78,194/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Ronald"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/136,117/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.8905,-122.0655",
        "gridId": "PQR",
        "latitude": 45.8904999988113,
        "longitude": -122.065500000206,
        "metadata-url": "https://api.weather.gov/points/45.8905,-122.0655",
        "trailhead": "Trailhead: Soda Peaks",
        "gridX": 136,
        "gridY": 117,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/136,117/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Carson"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/156,132/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.2886,-121.5515",
        "gridId": "PQR",
        "latitude": 46.2886119985481,
        "longitude": -121.551532000446,
        "metadata-url": "https://api.weather.gov/points/46.2886,-121.5515",
        "trailhead": "Trailhead: Killen Creek",
        "gridX": 156,
        "gridY": 132,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/156,132/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/75,102/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0876,-124.0691",
        "gridId": "SEW",
        "latitude": 48.0876079986123,
        "longitude": -124.069105999916,
        "metadata-url": "https://api.weather.gov/points/48.0876,-124.0691",
        "trailhead": "Mt. Muller - Rd. 3040 North Trailhead",
        "gridX": 75,
        "gridY": 102,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/75,102/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KLGX",
        "city": "Clallam Bay"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/158,127/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.9433,-121.6627",
        "gridId": "SEW",
        "latitude": 48.9433409992386,
        "longitude": -121.662662000217,
        "metadata-url": "https://api.weather.gov/points/48.9433,-121.6627",
        "trailhead": "Tomyhoi/Yellow Aster Butte Trailhead",
        "gridX": 158,
        "gridY": 127,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/158,127/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ567",
        "county": "https://api.weather.gov/zones/county/WAC073",
        "radarStation": "KATX",
        "city": "Glacier"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/102,86/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8775,-123.1375",
        "gridId": "SEW",
        "latitude": 47.8775259991933,
        "longitude": -123.137481999146,
        "metadata-url": "https://api.weather.gov/points/47.8775,-123.1375",
        "trailhead": "Upper Dungeness Trailhead",
        "gridX": 102,
        "gridY": 86,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/102,86/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Quilcene"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/53,151/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.5795,-120.4794",
        "gridId": "OTX",
        "latitude": 48.5795399996528,
        "longitude": -120.479409999926,
        "metadata-url": "https://api.weather.gov/points/48.5795,-120.4794",
        "trailhead": "Cedar Creek Trailhead",
        "gridX": 53,
        "gridY": 151,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/53,151/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ049",
        "county": "https://api.weather.gov/zones/county/WAC047",
        "radarStation": "KATX",
        "city": "Winthrop"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/115,143/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.6451,-118.5111",
        "gridId": "OTX",
        "latitude": 48.6451039986619,
        "longitude": -118.511110999677,
        "metadata-url": "https://api.weather.gov/points/48.6451,-118.5111",
        "trailhead": "Sherman Trailhead",
        "gridX": 115,
        "gridY": 143,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/115,143/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC019",
        "radarStation": "KOTX",
        "city": "Torboy"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/139,24/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.7657,-121.6355",
        "gridId": "SEW",
        "latitude": 46.7656943534452,
        "longitude": -121.635485414151,
        "metadata-url": "https://api.weather.gov/points/46.7657,-121.6355",
        "trailhead": "Wonderland Trail - Stevens Canyon",
        "gridX": 139,
        "gridY": 24,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/139,24/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC041",
        "radarStation": "KRTX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/153,127/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.1708,-121.6282",
        "gridId": "PQR",
        "latitude": 46.1707999982315,
        "longitude": -121.628200000417,
        "metadata-url": "https://api.weather.gov/points/46.1708,-121.6282",
        "trailhead": "Trailhead: Williams Mine",
        "gridX": 153,
        "gridY": 127,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/153,127/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/131,62/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.5028,-122.1119",
        "gridId": "SEW",
        "latitude": 47.5027943636267,
        "longitude": -122.111885166996,
        "metadata-url": "https://api.weather.gov/points/47.5028,-122.1119",
        "trailhead": "Licorice Fern Trail",
        "gridX": 131,
        "gridY": 62,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/131,62/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ555",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "East Renton Highlands"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/88,94/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9837,-123.6256",
        "gridId": "SEW",
        "latitude": 47.9837113789623,
        "longitude": -123.625602809464,
        "metadata-url": "https://api.weather.gov/points/47.9837,-123.6256",
        "trailhead": "Happy Lake Ridge",
        "gridX": 88,
        "gridY": 94,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/88,94/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC009",
        "radarStation": "KATX",
        "city": "Port Angeles"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/121,91/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.0561999,-122.5907",
        "gridId": "SEW",
        "latitude": 48.0561943875232,
        "longitude": -122.590684955388,
        "metadata-url": "https://api.weather.gov/points/48.0562,-122.5907",
        "trailhead": "South Whidbey State Park",
        "gridX": 121,
        "gridY": 91,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/121,91/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ510",
        "county": "https://api.weather.gov/zones/county/WAC029",
        "radarStation": "KATX",
        "city": "Freeland"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/122,109/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.4306,-122.6641",
        "gridId": "SEW",
        "latitude": 48.4305943778677,
        "longitude": -122.664084850129,
        "metadata-url": "https://api.weather.gov/points/48.4306,-122.6641",
        "trailhead": "Sharpe Park - Sares Head",
        "gridX": 122,
        "gridY": 109,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/122,109/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ506",
        "county": "https://api.weather.gov/zones/county/WAC057",
        "radarStation": "KATX",
        "city": "Anacortes"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/143,28/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.8674,-121.5176",
        "gridId": "SEW",
        "latitude": 46.8673943351634,
        "longitude": -121.517585411216,
        "metadata-url": "https://api.weather.gov/points/46.8674,-121.5176",
        "trailhead": "Tipsoo Lake-Naches Peak Loop",
        "gridX": 143,
        "gridY": 28,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/143,28/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Packwood"
      },
      {
        "id": "https://api.weather.gov/points/46.8694,-121.5196",
        "gridId": "SEW",
        "latitude": 46.8693943354193,
        "longitude": -121.519585409316,
        "metadata-url": "https://api.weather.gov/points/46.8694,-121.5196",
        "trailhead": "American Lake",
        "gridX": 143,
        "gridY": 28,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/143,28/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Packwood"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PQR/151,123/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.0852999,-121.6567",
        "gridId": "PQR",
        "latitude": 46.0853089985145,
        "longitude": -121.65669700075,
        "metadata-url": "https://api.weather.gov/points/46.0853,-121.6567",
        "trailhead": "Trailhead: Sleeping Beauty",
        "gridX": 151,
        "gridY": 123,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PQR/151,123/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ019",
        "county": "https://api.weather.gov/zones/county/WAC059",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/64,195/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.3962,-121.3785",
        "gridId": "PDT",
        "latitude": 47.3962169997414,
        "longitude": -121.378488999647,
        "metadata-url": "https://api.weather.gov/points/47.3962,-121.3785",
        "trailhead": "Gold Creek Pond Interpretive Site",
        "gridX": 64,
        "gridY": 195,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/64,195/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      },
      {
        "id": "https://api.weather.gov/points/47.3962,-121.3785",
        "gridId": "PDT",
        "latitude": 47.3962169997414,
        "longitude": -121.378488999647,
        "metadata-url": "https://api.weather.gov/points/47.3962,-121.3785",
        "trailhead": "Gold Creek Trailhead",
        "gridX": 64,
        "gridY": 195,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/64,195/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KATX",
        "city": "Snoqualmie Pass"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/105,84/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8587,-123.0188",
        "gridId": "SEW",
        "latitude": 47.8587289990864,
        "longitude": -123.018811000165,
        "metadata-url": "https://api.weather.gov/points/47.8587,-123.0188",
        "trailhead": "Mt. Townsend Lower Trailhead",
        "gridX": 105,
        "gridY": 84,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/105,84/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Quilcene"
      },
      {
        "id": "https://api.weather.gov/points/47.8561,-123.0356",
        "gridId": "SEW",
        "latitude": 47.8560999991641,
        "longitude": -123.035620999728,
        "metadata-url": "https://api.weather.gov/points/47.8561,-123.0356",
        "trailhead": "Mt. Townsend Upper Trailhead",
        "gridX": 105,
        "gridY": 84,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/105,84/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KATX",
        "city": "Quilcene"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/133,34/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.9326999,-121.8636",
        "gridId": "SEW",
        "latitude": 46.9326943685797,
        "longitude": -121.863585340088,
        "metadata-url": "https://api.weather.gov/points/46.9327,-121.8636",
        "trailhead": "Spray Park",
        "gridX": 133,
        "gridY": 34,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/133,34/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ569",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "Carbonado"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/62,178/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.0266,-121.3364",
        "gridId": "PDT",
        "latitude": 47.0265999985396,
        "longitude": -121.336399999789,
        "metadata-url": "https://api.weather.gov/points/47.0266,-121.3364",
        "trailhead": "Raven Roost Trailhead",
        "gridX": 62,
        "gridY": 178,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/62,178/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ522",
        "county": "https://api.weather.gov/zones/county/WAC077",
        "radarStation": "KATX",
        "city": "Cliffdell"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/102,166/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/46.9477,-120.0358",
        "gridId": "PDT",
        "latitude": 46.9476941728445,
        "longitude": -120.035785641117,
        "metadata-url": "https://api.weather.gov/points/46.9477,-120.0358",
        "trailhead": "Ginkgo Petrified Forest Interpretive Trails",
        "gridX": 102,
        "gridY": 166,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/102,166/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ026",
        "county": "https://api.weather.gov/zones/county/WAC037",
        "radarStation": "KPDT",
        "city": "Vantage"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/PDT/44,127/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/45.8919,-121.5741",
        "gridId": "PDT",
        "latitude": 45.8918943987573,
        "longitude": -121.574085614852,
        "metadata-url": "https://api.weather.gov/points/45.8919,-121.5741",
        "trailhead": "Monte Carlo",
        "gridX": 44,
        "gridY": 127,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/PDT/44,127/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ523",
        "county": "https://api.weather.gov/zones/county/WAC039",
        "radarStation": "KRTX",
        "city": "Trout Lake"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/113,51/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.2117,-122.5696",
        "gridId": "SEW",
        "latitude": 47.2116944291909,
        "longitude": -122.569585162045,
        "metadata-url": "https://api.weather.gov/points/47.2117,-122.5696",
        "trailhead": "Chambers Bay Loop",
        "gridX": 113,
        "gridY": 51,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/113,51/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ509",
        "county": "https://api.weather.gov/zones/county/WAC053",
        "radarStation": "KATX",
        "city": "University Place"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/159,143/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7984,-117.1336",
        "gridId": "OTX",
        "latitude": 48.7983609987618,
        "longitude": -117.133639000035,
        "metadata-url": "https://api.weather.gov/points/48.7984,-117.1336",
        "trailhead": "Pass Creek Pass Trailhead",
        "gridX": 159,
        "gridY": 143,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/159,143/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ037",
        "county": "https://api.weather.gov/zones/county/WAC051",
        "radarStation": "KOTX",
        "city": "Metaline Falls"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/37,105/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.569,-120.68",
        "gridId": "OTX",
        "latitude": 47.5689999984954,
        "longitude": -120.680000000299,
        "metadata-url": "https://api.weather.gov/points/47.569,-120.68",
        "trailhead": "Icicle Ridge Trailhead",
        "gridX": 37,
        "gridY": 105,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/37,105/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ047",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Leavenworth"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/161,66/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.7121,-121.1936",
        "gridId": "SEW",
        "latitude": 47.7120999993482,
        "longitude": -121.193649999971,
        "metadata-url": "https://api.weather.gov/points/47.7121,-121.1936",
        "trailhead": "Deception Creek Trailhead",
        "gridX": 161,
        "gridY": 66,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/161,66/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ568",
        "county": "https://api.weather.gov/zones/county/WAC033",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/74,89/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.8202,-124.0243",
        "gridId": "SEW",
        "latitude": 47.8202086714272,
        "longitude": -124.024253243693,
        "metadata-url": "https://api.weather.gov/points/47.8202,-124.0243",
        "trailhead": "Hoh-Bogachiel South Snider-Jackson Trail",
        "gridX": 74,
        "gridY": 89,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/74,89/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC031",
        "radarStation": "KLGX",
        "city": "Forks"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/28,124/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.9177,-121.087",
        "gridId": "OTX",
        "latitude": 47.9176999997368,
        "longitude": -121.08700000094,
        "metadata-url": "https://api.weather.gov/points/47.9177,-121.087",
        "trailhead": "Little Wenatchee Ford Trailhead",
        "gridX": 28,
        "gridY": 124,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/28,124/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ048",
        "county": "https://api.weather.gov/zones/county/WAC007",
        "radarStation": "KATX",
        "city": "Skykomish"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/SEW/79,70/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/47.457,-123.7326",
        "gridId": "SEW",
        "latitude": 47.4569669996717,
        "longitude": -123.732605000361,
        "metadata-url": "https://api.weather.gov/points/47.457,-123.7326",
        "trailhead": "Pete's Creek Trailhead",
        "gridX": 79,
        "gridY": 70,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/SEW/79,70/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ513",
        "county": "https://api.weather.gov/zones/county/WAC027",
        "radarStation": "KLGX",
        "city": "Neilton"
      }
    ]
  },
  {
    "url": "https://api.weather.gov/gridpoints/OTX/116,148/forecast/hourly",
    "metadata-list": [
      {
        "id": "https://api.weather.gov/points/48.7389,-118.5133",
        "gridId": "OTX",
        "latitude": 48.7388759982842,
        "longitude": -118.513337000212,
        "metadata-url": "https://api.weather.gov/points/48.7389,-118.5133",
        "trailhead": "Lambert Trailhead",
        "gridX": 116,
        "gridY": 148,
        "forecastHourly":
          "https://api.weather.gov/gridpoints/OTX/116,148/forecast/hourly",
        "forecastZone": "https://api.weather.gov/zones/forecast/WAZ038",
        "county": "https://api.weather.gov/zones/county/WAC019",
        "radarStation": "KOTX",
        "city": "Malo"
      }
    ]
  }
]
`

open Js.Json
open Belt.Option

let getStringOpt = (json, key) => {
  json -> Js.Dict.get(key) -> flatMap(decodeString)
}
let getFloatOpt = (json, key) => {
  json -> Js.Dict.get(key) -> flatMap(decodeNumber)
}
let getIntOpt = (json, key) => {
  json -> Js.Dict.get(key) -> flatMap(decodeNumber) -> flatMap(Belt.Int.fromFloat)
}

let getArrayOpt = (json, key) => {
  json -> Js.Dict.get(key) -> flatMap(decodeArray)
}

let flatten = list => {
  list -> Belt.Array.reduce([], (result, opt) => {
    switch opt {
    | Some(v) => result -> Belt.Array.concat([v])
    | None => result
    }
  })
}

let parseTrailMetadata = json => {
  json -> decodeObject -> flatMap(obj => 
    obj -> getStringOpt("id") -> flatMap(id => 
      obj -> getStringOpt("gridId") -> flatMap(gridId => 
        obj -> getFloatOpt("latitude") -> flatMap(latitude => 
          obj -> getFloatOpt("longitude") -> flatMap(longitude => 
            obj -> getStringOpt("metadata-url") -> flatMap(metadataUrl => 
              obj -> getStringOpt("trailhead") -> flatMap(trailhead => 
                obj -> getIntOpt("gridX") -> flatMap(gridX => 
                  obj -> getIntOpt("gridY") -> flatMap(gridY => 
                    obj -> getStringOpt("forecastHourly") -> flatMap(forecastHourly => 
                      obj -> getStringOpt("forecastZone") -> flatMap(forecastZone => 
                        obj -> getStringOpt("county") -> flatMap(county => 
                          obj -> getStringOpt("radarStation") -> flatMap(radarStation => 
                            obj -> getStringOpt("city") -> flatMap(city => 
                              {
                                id, gridId, latitude, longitude, metadataUrl, trailhead, gridX, gridY, forecastHourly, forecastZone, county, radarStation, city
                              }
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      )
    )
  )
}

let parseObject = json => {
  json -> decodeObject -> flatMap(obj => 
    obj -> getStringOpt("url") -> flatMap(url => 
      obj -> getArrayOpt("metadata-list") -> flatMap(parseTrailMetadata) -> flatMap(flatten) -> flatMap(metadataArray => 
        {url, metadataArray}
      )
    )
  )
}

let parseObjectArray = json => {
  json -> decodeArray -> flatMap(Belt.Array.map(parseObject))
}