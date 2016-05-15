$(document).on('ready', function() {
  //Options for Slick carousel plugin
  $('.carousel').slick({
      infinite: true,
      speed: 300,
      slidesToShow: 1,
      adaptiveHeight: true,
      arrows: true,
      dots: true,
  });

  $('#search-category-list a').on('click', function(event) {
    event.preventDefault();

    var searchValue = $(this).html();
    if ($(this).html() === "All") {
      searchValue = "";
    }

    $.ajax({
      url: '/?search=' + searchValue,
      type:  'GET',
      dataType: 'html',
      data: searchValue,
      success:  function(data) {
        if (data) {
          console.log(data);
          $('body').html(data);
        }
      }
    });
  });
});
