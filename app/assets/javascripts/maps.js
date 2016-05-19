
  function initMap() {

  var map_placeholder = $('#map');
  var myLatLng = {lat : map_placeholder.data('latitude'), lng : map_placeholder.data('longitude')};


  var locations = gon.nearby_musicians;
  console.log(locations)
  var map = new google.maps.Map(map_placeholder[0],{
    center: myLatLng,
    zoom: 15
  });

  var infowindow = new google.maps.InfoWindow({
    content: "test"
  });

  var markero = new google.maps.Marker({
    position: myLatLng,
    // strokeColor: "green",
  })
    markero.setMap(map);

    for (i = 0; i < locations.length; i++) {
      var location= new google.maps.LatLng(locations[i][3], locations[i][4]);
      var marker = new google.maps.Marker({
        position: location,
        clickable: true,
        url: '/musicians/'+locations[i][0] ,
        title: locations[i][1]
      });
      marker.addListener('click', function() {window.location.href = marker.url;});
        marker.setMap(map);

  };

};
