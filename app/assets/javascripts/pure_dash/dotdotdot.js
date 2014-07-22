$.fn.dotdotdot = function (options) {
  var _this = this;
  var defaults = {
    length: 120,
    textMore: "show more",
    textLess: "hide",
    dot: "...",
    effect: false
  }
  
  var opts = $.extend(defaults, options);
  
  var setHtml = function (item, value) {
    if (opts.effect) {
      item.hide();
      item.html(value);
      item.fadeIn(100);
    } else {
      item.html(value);
    }
  }
  
  var _addEventMore = function ($item, full, mini, _opts) {
    setHtml($item, mini + _opts.dot)
    var a = $("<a/>").attr("href", "#").html(_opts.textMore).css("padding-left", "5px");
    $item.append(a);
    a.click(function(event) {
      event.preventDefault();
      setHtml($item, full)
      a = $("<a/>").attr("href", "#").html(_opts.textLess).css("padding-left", "5px");
      $item.append(a);
      _addEventLess($item, full, mini, _opts);
    })
  }
  
  var _addEventLess = function ($item, full, mini, _opts) {
    setHtml($item, full)
    var a = $("<a/>").attr("href", "#").html(_opts.textLess).css("padding-left", "5px");
    $item.append(a);
    a.click(function(event) {
      event.preventDefault();
      var length = $item.attr("length") || _opts.length;
      var mini = $item.text().substr(0, length);
      if (full.length > length) {
        setHtml($item, mini + _opts.dot)
        var a = $("<a/>").attr("href", "#").html(_opts.textMore).css("padding-left", "5px");
        $item.append(a);
        _addEventMore($item, full, mini, _opts);
      }      
    })
  }
  
  if (_this.length > 0) {
    $.each(_this, function(index, item) {
      var $item = $(item);
      var length = $item.attr("length") || opts.length;
      var mini = $item.text().substr(0, length);
      var full = $item.text();
      if (full.length > length) {
        setHtml($item, mini + opts.dot)
        var a = $("<a/>").attr("href", "#").html(opts.textMore).css("padding-left", "5px");
        $item.append(a);
        _addEventMore($item, full, mini, opts);
      }
    })
  }
}
