$(document).on('ready page:load', function() {
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

  $('#nav-toggle').on('click', function(e) {
    e.preventDefault();

    $(this).add('#sidebar').toggleClass('is-open');
  })
});

// Code for modal, if we want one
// $(function() {
//   $("#modal-1").on("change", function() {
//     if ($(this).is(":checked")) {
//       $("body").addClass("modal-open");
//     } else {
//       $("body").removeClass("modal-open");
//     }
//   });
//
//   $(".modal-fade-screen, .modal-close").on("click", function() {
//     $(".modal-state:checked").prop("checked", false).change();
//   });
//
//   $(".modal-inner").on("click", function(e) {
//     e.stopPropagation();
//   });
// });
