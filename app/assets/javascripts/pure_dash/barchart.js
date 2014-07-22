$.fn.barChar = function (options) {
  var _this = this;
  var defaults = {
    color_background: false,
    color_bar: "#aaaaaa",
    color_bar_hover: "#555555",
    color_value: "#666666",
    showValue: false
  }
  
  var opts = $.extend(defaults, options);
  
  $.each(_this, function (index, item) {
    var $item = $(item);
    var _left = $item.attr("value") / $item.attr("max") * 100;
    var _bar = $("<div/>").css({
      background: opts.color_bar,
      width: "0%",
      height: "100%",
      position: "absolute",
      top: 0,
      left: 0,
      cursor: "pointer",
      transition: "width 1.5s",
      "-moz-transition": "width 1.5s",
      "-webkit-transition": "width 1.5s"
    })
        
    _bar.mouseenter(function() {
      $(this).css({background: opts.color_bar_hover})
    })
    
    _bar.mouseleave(function() {
      $(this).css({background: opts.color_bar})
    })
    
    $item.css("position", "relative");
    
    $item.append(_bar);
    _bar.width(_left + "%");
    
    if (opts.showValue) {
      $item.append($("<span/>").css({
        position: "absolute",
        left: $item.attr("value") / $item.attr("max") * 100 + 1 + "%",
      }).html($item.attr("value")))
    }
  })
}