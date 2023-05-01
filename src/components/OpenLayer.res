type xyzparams = {
  url: string
}
type xyz
@module("ol/source/XYZ") @new external createXYZ : xyzparams => xyz = "default"

type tileparams = {
  source: xyz
}
type tilelayer
@module("ol/layer/Tile") @new external createTileLayer : tileparams => tilelayer = "default"

type view
type viewParams = {
  projection: string,
  center: array<float>,
  zoom: float,
  maxZoom: int
} 
@module("ol/View") @new external createView : viewParams => view = "default"

type point
@module("ol/geom/Point") @new external createPoint : array<float> => point = "default"

type featureinput = {
  id: string,
  geometry: point
}
type feature 
@module("ol/Feature") @new external createFeature : featureinput => feature = "default"
@send external get : (feature, string) => string = "get"

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

type selectparam = {
  layers: array<Layer.t>
}
type select
@module("ol/interaction/Select") @new external createSelect : selectparam => select = "default"

@send external addInteraction: (map, select) => unit = "addInteraction"
type event = {
  selected: array<feature>
}
@send external on: (select, string, (event) => unit) => unit = "on"