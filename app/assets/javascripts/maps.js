
function initMap() {

  var map_placeholder = $('#map');
  var myLatLng = {lat : map_placeholder.data('latitude'), lng : map_placeholder.data('longitude')};

  var gmarkers = [];
  var locations = gon.nearby_musicians;
  var type=gon.type
  var map = new google.maps.Map(map_placeholder[0],{
    center: myLatLng,
    zoom: 10
  });

  var infowindow = new google.maps.InfoWindow({
    content: "test"
  });

  var markero = new google.maps.Marker({
    position: myLatLng,
  })

  markero.setIcon('http://maps.google.com/mapfiles/ms/icons/blue-dot.png');
  markero.setMap(map);

  for (i = 0; i < locations.length; i++) {
    var location= new google.maps.LatLng(locations[i][2], locations[i][3]);
    var category=(locations[i][4]);

    var marker = new google.maps.Marker({
	     position: location,
	     clickable: true,
	     url: '/'+type +'/'+locations[i][0] ,
	    title: locations[i][1]+ " " +category
     });
     gmarkers.push(marker);
     marker.addListener('click', function() {window.location.href = marker.url;});
	   marker.setMap(map);
  };

  $("#position").change(function(f){
    var action = $('#position option:selected').data('id');
    var genre = $('#position  option:selected').data('name');

    filterMarkers = function (category) {
      for (i = 0; i < markers1.length; i++) {
	       marker = gmarkers1[i];
					// If is same category or category not picked
	      if (marker.category == genre || category.length === 0) {
			         marker.setVisible(true);
	      }
// Categories don't match
	      else {
		         marker.setVisible(false);
	      }
      }
      console.log(action + " "+ genre );
    }
  });
};


function initMap2() {

  var map_placeholder = $('#searchmap');
  var myLatLng = {lat: map_placeholder.data('latitude'), lng: map_placeholder.data('longitude')};

  var gmarkers = [];
  var locations = gon.nearby_musicians;
  var type = gon.type;
  var map = new google.maps.Map(map_placeholder[0], {
    center: myLatLng,
    zoom: 13
  });

  var infowindow = new google.maps.InfoWindow({
    content: "test"
  });

  var markero = new google.maps.Marker({
    position: myLatLng
  })

  markero.setIcon('http://maps.google.com/mapfiles/ms/icons/blue-dot.png');
  markero.setMap(map);

  for (i = 0; i < locations.length; i++) {
    var location = new google.maps.LatLng(locations[i][2], locations[i][3]);
    var category =(locations[i][4]);

    var marker = new google.maps.Marker({
	     position: location,
	     clickable: true,
	     url: '/' + type + '/' + locations[i][0],
	    title: locations[i][1] + " " + category
     });
     gmarkers.push(marker);
     marker.addListener('click', function() {window.location.href = marker.url;});
	   marker.setMap(map);
  };

  $('#genre').change(function(f) {
      f.preventDefault();
      var action = $('#genre option:selected').data('id');
      var genre = $('#genre option:selected').data('name');

      console.log(action + ' ' + genre);
  });

  $('#position').change(function(f) {
      f.preventDefault();
      var action = $('#position option:selected').data('id');
      var position = $('#position option:selected').data('name');

      console.log(action + ' ' + position);
      marker.visible = false;
  });
};
