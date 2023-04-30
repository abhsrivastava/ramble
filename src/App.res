%%raw("import './styles/App.css'")

type osmParams = {
  url: string
}
type osm
@module("ol/source/OSM") @new external createOSM : osmParams => osm = "default"

type tileLayerParams = {
  title: string,
  @as("type") type_: string,
  visible: bool,
  source: osm
}
type tilelayer
@module("ol/layer/Tile") @new external createTileLayer : tileLayerParams => tilelayer = "default"

type view
type viewParams = {
  projection: string,
  center: array<float>,
  zoom: float
} 
@module("ol/View") @new external createView : viewParams => view = "default"

type pointinput
@module("ol/proj") @val external fromLonLat : array<float> => pointinput = "fromLonLat"

type point
@module("ol/geom/Point") @new external createPoint : pointinput => point = "default"

type featureinput = {
  geometry: point
}
type feature 
@module("ol/Feature") @new external createFeature : featureinput => feature = "default"

type icon 
type iconparam = {
  color: string,
  crossOrigin: string,
  src: string,
  scale: float
}
type style 
type styleparam = {
  image: icon
}
@module("ol/style") @new external createIcon: iconparam => icon = "Icon"
@module("ol/style") @new external createStyle: styleparam => style = "Style"
@send external setStyle : (feature, style) => unit = "setStyle"
type featureParam = {
  features: array<feature>
}
type vectorsource
@module("ol/source/Vector.js") @new external createVectorSource : featureParam => vectorsource = "default"

type vectorparam = {
  source: vectorsource
}
type vectorlayer
@module("ol/layer") @new external createVectorLayer: vectorparam => vectorlayer = "Vector"

type layer = 
| TileLayer(tilelayer)
| VectorLayer(vectorlayer)

type mapParams = {
  target: string,
  layers: array<tilelayer>,
  view: view
}
type map
@module("ol/Map") @new external createMap : mapParams => map = "default"

@react.component
let make = () => {
  React.useEffect0(() => {
    let feature = createFeature({geometry: {createPoint(fromLonLat([-121.08700000094, 47.9176999997368]))}})
    let style = createStyle({image: createIcon({color: "#BADA55", crossOrigin: "anonymous", src: "images/hiking.png", scale: 0.2})})
    let _ = feature -> setStyle(style)
    let vectorSource = createVectorSource({features: [feature]})
    let osm = createOSM({ url: "https://b.tile.opentopomap.org/{z}/{x}/{y}.png"})
    let tileLayer = createTileLayer({title: "OSM", type_: "base", visible: true, source: osm})
    let vectorLayer = VectorLayer(createVectorLayer({source: vectorSource}))
    let _ = createMap({
      target: "map",
      layers: [tileLayer],
      view: createView({projection: "EPSG:4326", center: [-121.02524898891282, 47.440536890633204], zoom: 8.7})
    })
    None
  })
  <div id="map" className="map"></div>
}