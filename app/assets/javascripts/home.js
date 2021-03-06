$(document).on('ready page:load', function() {

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
          $('#bands-list').html(data);
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
      url: '/?search=' + searchValue,
      type:  'GET',
      dataType: 'html',
      data: 'type=musician',
      success:  function(data) {
        if (data) {
          console.log(data);
          $('#musicians-list').html(data);
        }
      }
    });
  });

  $('#nav-toggle').on('click', function(e) {
    e.preventDefault();

    $(this).add('#search-category-list').toggleClass('is-open');

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

$(function() {
  $('a[href*="#"]:not([href="#"])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html, body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });

  var amountScrolled = 800;

  $(window).scroll(function() {
    if ( $(window).scrollTop() > amountScrolled ) {
      $('aside').addClass('aside-lock');
    } else {
      $('aside').removeClass('aside-lock');
    };
});


});
