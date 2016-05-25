$(document).on('ready', function() {

  $('.genres-scroll a').on('click', function(event) {
    event.preventDefault();

    var searchValue = $(this).html();

    if ($(this).html() === "All") {
      searchValue = "";
    }

    $.ajax({
      url: '/?search=' + searchValue,
      type:  'GET',
      dataType: 'html',
      data: 'type=band',
      success:  function(data) {
        if (data) {
          console.log(data);
          $('.bands').html(data);
        }
      }
    });
  });

  $('.positions-scroll a').on('click', function(event) {
    event.preventDefault();

    var searchValue = $(this).html();

    if ($(this).html() === "All") {
      searchValue = "";
    }

    $.ajax({
      url: '/?search=' + searchValue ,
      type:  'GET',
      dataType: 'html',
      data: 'type=musician',
      success:  function(data) {
        if (data) {
          console.log(data);
          $('.musicians').html(data);
        }
      }
    });
  });
});
