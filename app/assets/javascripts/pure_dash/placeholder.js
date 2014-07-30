if(navigator.appVersion.indexOf("MSIE 8.") + navigator.appVersion.indexOf("MSIE 9.") > 0) {
  $(document).ready(function(event) {
    $('[placeholder]').each(function(index, input) {
      var input = $(input);
      var hint = input.attr('placeholder')
      var $hint = $("<hint/>").css({
        top: input[0].offsetTop + 5,
        left: input[0].offsetLeft + 5
      }).html(hint);
      $hint.insertAfter(input);

      $hint.click(function() {
        input.focus();
      })
    
      var show = function () {
        if (input.val() == "") {
          $hint.show();
        } else {
          $hint.hide();
        }
      }    
    
      input.focus(function() {
        $hint.hide();
      }).blur(function() {
        show();
      });
      show();
    });
  })
}
