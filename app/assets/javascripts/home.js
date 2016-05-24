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
        if (data) {
          console.log(data);
          $('.bands').html(data);
        }
      }
    });


    // $.getScript('/?search=' + searchValue, function(data){$('#bands-list').html(data)});
  });
});
