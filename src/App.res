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
    let _ = createMap({
      target: "map",
      layers: [createTileLayer({
        title: "OSM",
        type_: "base",
        visible: true,
        source: createOSM({
        url: "https://b.tile.opentopomap.org/{z}/{x}/{y}.png"
      })})],
      view: createView({projection: "EPSG:4326", center: [-121.02524898891282, 47.440536890633204], zoom: 8.7})
    })
    None
  })
  <div id="map" className="map"></div>
}