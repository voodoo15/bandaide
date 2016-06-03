$(document).on('ready page:load', function() {
  $('#search-category-list a').on('click', function(event) {

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

      // $.getScript('/?search=' + searchValue, function(data){$('#bands-list').html(data)});

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

    $('#nav-toggle').on('click', function(e) {
      e.preventDefault();

      $(this).add('#sidebar').toggleClass('is-open');
    });
  });
});

$(window).on("load resize",function(e) {
  var more = document.getElementById("js-centered-more");

  if ($(more).length > 0) {
    var windowWidth = $(window).width();
    var moreLeftSideToPageLeftSide = $(more).offset().left;
    var moreLeftSideToPageRightSide = windowWidth - moreLeftSideToPageLeftSide;

    if (moreLeftSideToPageRightSide < 330) {
      $("#js-centered-more .submenu .submenu").removeClass("fly-out-right");
      $("#js-centered-more .submenu .submenu").addClass("fly-out-left");
    }

    if (moreLeftSideToPageRightSide > 330) {
      $("#js-centered-more .submenu .submenu").removeClass("fly-out-left");
      $("#js-centered-more .submenu .submenu").addClass("fly-out-right");
    }
  }

  var menuToggle = $("#js-centered-navigation-mobile-menu").unbind();
  $("#js-centered-navigation-menu").removeClass("show");

  menuToggle.on("click", function(e) {
    e.preventDefault();
    $("#js-centered-navigation-menu").slideToggle(function(){
      if($("#js-centered-navigation-menu").is(":hidden")) {
        $("#js-centered-navigation-menu").removeAttr("style");
      }
    });
  });
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
