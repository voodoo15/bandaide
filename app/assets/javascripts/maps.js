function initMap() {

  var map_placeholder = $('#map');
  var myLatLng = {lat : map_placeholder.data('latitude'), lng : map_placeholder.data('longitude')};

  var map = new google.maps.Map(map_placeholder[0],{
    center: myLatLng,
    zoom: 15
  });

  var marker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      title: "test"
    });
}
