function initMap() {

  map_placeholder = $('#map')
  lat = map_placeholder.data('latitude')
  lng = map_placeholder.data('longitude')

  map = new google.maps.Map(map_placeholder[0],{
    center: {lat: lat, lng: lng},
    zoom: 15
  });

}
