$(document).on('ready', function() {
  alert('Search loaded');
  // $.ajax({
  //   beforeSend: function(xhr){
  //     if (xhr.overrideMimeType) {
  //       xhr.overrideMimeType("application/json");
  //     }
  //   }
  // })

  $('#genre').change(function(f) {
      f.preventDefault();
      alert('Worked');
      var action = $('#genre option:selected').data('id');
      var genre = $('#genre option:selected').data('name');

      console.log(action + ' ' + genre);
  });

  $('#position').change(function(f) {
      f.preventDefault();
      alert('Position Worked');
      var action = $('#position option:selected').data('id');
      var genre = $('#position  option:selected').data('name');

      console.log(action + ' ' + genre);
      // marker.visable === false;
  });
});
