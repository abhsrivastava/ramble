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

type point
@module("ol/geom/Point") @new external createPoint : array<float> => point = "default"

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

module Layer = {
  type t
  external tileLayer : tilelayer => t = "%identity"
  external vectorLayer : vectorlayer => t = "%identity"
}

type mapParams = {
  target: string,
  layers: array<Layer.t>,
  view: view
}
type map
@module("ol/Map") @new external createMap : mapParams => map = "default"