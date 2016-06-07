$(document).on('ready page:load', function() {
  $('.apply-button').on('click', function(e) {
    e.preventDefault();

    $(this).toggleClass('applied');
  });
});
