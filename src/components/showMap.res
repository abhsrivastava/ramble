open OpenLayer

%%raw("import '/src/styles/App.css'")
@module("/src/images/mappin.svg") @val external hikingImage : string = "default"

let createVectorSource = (tupleList : array<(string, float, float)>) : vectorsource => {
  let style = createStyle({image: createIcon({color: "#BADA55", crossOrigin: "*", src: {hikingImage}, scale: 0.4})})
  let features = tupleList -> Belt.Array.map(((id, long, lat)) => {
    let feature = createFeature({id: id, geometry: {createPoint([long, lat])}})
    let _ = feature -> setStyle(style)
    feature
  })
  createVectorSource({features: features})
}

@react.component
let make = () => {
  React.useEffect0(() => {
    let vectorsource = TrailsDatabase.getTrailDatabase() 
      -> Belt.Array.flatMap( groupedMetadata => groupedMetadata.metadataArray -> Belt.Array.map(md => (md.id, md.longitude, md.latitude)))
      -> createVectorSource
    let tileLayer = Layer.tileLayer(createTileLayer({source: createXYZ({ url: Env.usTopoMap})}))
    let vectorLayer = Layer.vectorLayer(createVectorLayer({source: vectorsource}))
    let select = createSelect({layers: [vectorLayer]})
    let map = createMap({
      target: "map",
      layers: [tileLayer, vectorLayer],
      view: createView({projection: "EPSG:4326", center: [-121.02524898891282, 47.440536890633204], zoom: 8.7, maxZoom: 16})
    })
    select -> on("select", (e) => {
      if (e.selected -> Js.Array.length > 0) {
        let feature = e.selected[0]
        feature -> Js.log
        feature -> get("id") -> Js.log
      }
    })
    map -> addInteraction(select) -> ignore
    None
  })
  <div id="map" className="map"></div>
}