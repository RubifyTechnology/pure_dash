//= require smart_listing
//= require ./nprogress
//= require ./responsive-tables
//= require ./strength
//= require ./chart
//= require ./jquery-ui
//= require ./jquery.simplePagination
//= require ./dotdotdot
//= require ./popup.pure_dash
//= require ./barchart
//= require ./jquery.mousewheel
//= require ./jquery.mCustomScrollbar
//= require ./jquery.bpopup
//= require ./show.errors
//= require ./placeholder
//= require ./modernizr
//= require ./flashcanvas
//= require ./canvas2png

//= require ../fancybox/jquery.mousewheel-3.0.6.pack.js
//= require ../fancybox/jquery.fancybox.js
//= require ../fancybox/jquery.fancybox-buttons.js
//= require ../fancybox/jquery.fancybox-thumbs.js
//= require ../fancybox/jquery.fancybox-media.js

//= require ../pickadate/picker.js
//= require ../pickadate/picker.date.js
//= require ../pickadate/legacy.js

//= require_self

$(document).delegate("div.open-menu-link", "click", function() {    
  $("ul.pure-dash-main-menu li.active div.sub-menu").remove();
  $(".pure-dash-sub-menu-container").clone().addClass("sub-menu").appendTo($("ul.pure-dash-main-menu li.active"));
  $(document.body).toggleClass("menu-active");
  return false;
});

function getVerIE() {
  $.each(navigator.appVersion.split(";"), function(index, item) {
    if (item.split(" ")[1] == "MSIE") {
      window.verIE = item.split(" ")[2];
      return window.verIE;
    }
  })
}