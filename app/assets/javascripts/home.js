$(document).on('ready', function() {
  $('#search-category-list a').on('click', function(event) {
    event.preventDefault();
    alert($(this).html());
  });
});
