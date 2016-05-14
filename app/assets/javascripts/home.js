$(document).on('ready', function() {
  $('#search-category-list a').on('click', function(event) {
    event.preventDefault();
    alert($(this).html());
    var searchValue = $(this).html();

    $.ajax({
      url: '/?search=' + searchValue,
      type:  'GET',
      dataType: 'html',
      data: searchValue,
      success:  function(data) {
        console.log(data);
        $('.bands').html(data);
      }});
  });
});
