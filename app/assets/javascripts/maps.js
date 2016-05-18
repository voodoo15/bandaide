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

    for (i = 0; i < locations.length; i++) {
      var location= new google.maps.LatLng(locations[i][0], locations[i][1]);
      var marker = new google.maps.Marker({
        position: location,
        clickable:true,
        url: '/',
        title:"Hello World!"
      });
      marker.addListener('click', function() {window.location.href = marker.url;});
        marker.setMap(map);
  };


};
