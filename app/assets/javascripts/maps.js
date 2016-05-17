function initMap() {

  var map_placeholder = $('#map');
  var myLatLng = {lat : map_placeholder.data('latitude'), lng : map_placeholder.data('longitude')};



  var locations = [
      ['Bondi Beach', 43.6536, -79.4258, 4],
      ['Coogee Beach', 46.6536, -77.4258,  5],
      ['Cronulla Beach', 43.6536, -75.4258, , 3],
    ];

  var map = new google.maps.Map(map_placeholder[0],{
    center: myLatLng,
    zoom: 15
    title: "home"
  });



  var marker, i;
    for (i = 0; i < locations.length; i++) {
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map,
        title:"hi"
      });
    };
};
  //
  // = new google.maps.Marker({
  //     position: myLatLng,
  //     map: map,
  //     title: "test"
  //   });
