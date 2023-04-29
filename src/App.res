open RescriptLeafletReact

module EventLogger = {
  @react.component
  let make = () => {
    open LeafletHooks 
    let map = useMap()
    let mapEvents = useMapEvents(EventHandlers.make(
      ~click = (event) => {
        "Mouse Click: " -> Js.log
        event -> Js.log
      }, ()
    ))
    let onSingleEvent = useMapEvent("drag", (pos) => {
      "Drag Event" -> Js.log
      pos -> Js.log
    })
    "Center:" -> Js.log
    map.getCenter(.) -> Js.log
    <></>
  }
}
@react.component
let make = () => {
  open LeafletReact
  let logMouseEvent = (e) => {
    e -> Js.log
  }
  let logPopupEvent = (e) => {
    e -> Js.log
  }
  let logDragEvent = (e) => {
    e -> Js.log
  }
  <div>
    <MapContainer 
      center={(39.043705, -95.692240)} 
      style={Some(ReactDOM.Style.make(~height="100vh", ()))}
      zoom={3.}>
      <TileLayer 
        attribution={Some("&copy; <a href=\"https://www.openstreetmap.org/copyright\">OpenStreetMap</a> contributors")}
        url={"https://basemap.nationalmap.gov/arcgis/rest/services/USGSTopo/MapServer/tile/{z}/{y}/{x}"} />
      <EventLogger />
      <Marker 
        position={(39.043705, -95.692240)}
        eventHandlers={Some(EventHandlers.make(
          ~click= logMouseEvent,
          ~popupopen= logPopupEvent,
          ~drag= logDragEvent,
          ()
        ))}>
          <Popup>
            {"You Clicked this marker" -> React.string}
          </Popup>
        </Marker>      
    </MapContainer>
  </div>
}

// washington state bounding box
// point 1: 48.98508557695433, -124.70566893369408
// point 2: 48.98508557695433, -117.05369134832023
// point 3: 45.77269763466295, -124.70566893369408
// point 4: 46.005930554270684, -116.93833490433757
