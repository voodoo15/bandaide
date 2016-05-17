function initMap() {

  var map_placeholder = $('#map');
   var myLatLng = {lat : map_placeholder.data('latitude'), lng : map_placeholder.data('longitude')};



  var locations = gon.nearby_musicians;
  console.log(locations)
  var map = new google.maps.Map(map_placeholder[0],{
    center: myLatLng,
    zoom: 15
  });


    for (i = 0; i < locations.length; i++) {
      var marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map,
        title: "title"
      });
      console.log(locations[i][1])
    };
};
  //
  // = new google.maps.Marker({
  //     position: myLatLng,
  //     map: map,
  //     title: "test"
  //   });
