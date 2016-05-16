$(document).on('ready', function() {
  //Options for Slick carousel plugin
  $('.carousel').slick({
      infinite: true,
      speed: 300,
      slidesToShow: 1,
      adaptiveHeight: true,
      arrows: true,
      dots: true,
      prevArrow: $('.prev'),
      nextArrow: $('.next'),
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
          $('#bands-list').html(data);
        }
      }
    });

    // $.getScript('/?search=' + searchValue, function(data){$('#bands-list').html(data)});
  });
});
