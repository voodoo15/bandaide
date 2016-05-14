$(document).on('ready', function() {
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
        console.log(data);
        $('body').html(data);
      }});
  });
});
