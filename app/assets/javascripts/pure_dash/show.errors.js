var showErrors = function (options) {
  var _this = this;
  var defaults = {}
  var opts = $.extend(defaults, options);
  
  $(document).ready(function() {
    $.each(options.errors, function (key, item) {
      var $input = $("[name*='["+key+"]']");
      var $messages = $("<div/>").addClass("errors");
      $messages.insertAfter($input);
      $.each(item, function(index, message) {
        $messages.append($("<span/>").addClass("error").html(message));
      })
    })
  })
}
