%%raw("import './styles/App.css'")

type osm
@module("ol/source/OSM") @new external createOSM : unit => osm = "default"

type tileLayerParams = {
  source: osm
}
type tilelayer
@module("ol/layer/Tile") @new external createTileLayer : tileLayerParams => tilelayer = "default"

type view
type viewParams = {
  center: array<int>,
  zoom: int
} 
@module("ol/View") @new external createView : viewParams => view = "default"

type mapParams = {
  target: string,
  layers: array<tilelayer>,
  view: view
}
type map
@module("ol/Map") @new external createMap : mapParams => map = "default"

let map = createMap({
  target: "map",
  layers: [createTileLayer({source: createOSM()})],
  view: createView({center: [0, 0], zoom: 1})
})

@react.component
let make = () => {
  React.useEffect0(() => {
    let _ = createMap({
      target: "map",
      layers: [createTileLayer({source: createOSM()})],
      view: createView({center: [0, 0], zoom: 1})
    })
    None
  })
  <div id="map" className="map"></div>
}