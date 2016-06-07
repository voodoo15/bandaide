function initMap() {

  var map_placeholder = $('#map');
  var myLatLng = {lat: gon.latLng[0], lng: gon.latLng[1]};

  var locations = gon.nearby_musicians;
  var type = gon.type;
  var map = new google.maps.Map(map_placeholder[0], {
    center: myLatLng,
    zoom: 10
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
      url: '/'+ type + '/' + locations[i][0],
      title: locations[i][1] + " " + category,
     });

     marker.addListener('click', function() {
       window.location.href = this.url;
     });
     marker.setMap(map);
  };
};

function initMap2() {

  var map_placeholder = $('#searchmap');
  var myLatLng = {lat: map_placeholder.data('latitude'), lng: map_placeholder.data('longitude')};

  var locations = gon.nearby_musicians;
  var map = new google.maps.Map(map_placeholder[0], {
    center: myLatLng,
    zoom: 13
  });
  var markerGroups = {
    'All': [],
    'Singer': [],
    'Drummer': [],
    'Lead': [],
    'Bass': [],
    'keyboard': [],
    'Classic': [],
    'Heavy Metal': [],
    'Goth': [],
    'Alternative': [],
    'Pop': [],
    'Blues': [],
    'Psychadelic': [],
    'Punk': [],
    'Glam': [],
    'Britpop': [],
    'Indie': [],
    'Rock & Roll': [],
    'Jazz': []
  };

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
    var category = (locations[i][4]);
    var type = locations[i][5];
    var image = locations[i][6];

    var marker = new google.maps.Marker({
      position: location,
      clickable: true,
      url: '/' + type + '/' + locations[i][0],
      title: locations[i][1] + " " + category + " " + '/' + type + '/' + locations[i][0],
      category: category,
      icon: image
    });

    //Find the skill of the musician and add it to a custom group so I can target the group later
    var skill = marker.category;
    markerGroups[skill].push(marker);
    markerGroups['All'].push(marker);

    marker.addListener('click', function() {
      window.location.href = this.url;
    });
    marker.setMap(map);
  };

  function makeGroupVisible(type) {

    makeGroupInvisible();

    for (var i = 0; i < markerGroups[type].length; i++) {
      var marker = markerGroups[type][i];
      console.log(marker);
      marker.setVisible(true);
    }
  }

  function makeGroupInvisible() {
    for (var i = 0; i < markerGroups['all'].length; i++) {
      var marker = markerGroups['all'][i];
      console.log(marker);
      marker.setVisible(false);
    }
  }

  $('#genre').change(function(f) {
      f.preventDefault();
      var action = $('#genre option:selected').data('id');
      var genre = $('#genre option:selected').data('name');

      console.log(action + ' ' + genre);
      makeGroupVisible(genre);
  });

  $('#position').change(function(f) {
      f.preventDefault();
      var action = $('#position option:selected').data('id');
      var position = $('#position option:selected').data('name');

      console.log(action + ' ' + position);
      makeGroupVisible(position);
  });
};
