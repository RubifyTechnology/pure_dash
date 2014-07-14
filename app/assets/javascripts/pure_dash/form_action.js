$(document).ready(function() {
  $("body").delegate("[type='form_action']", "click", function(event){
    var attrs = $(this)[0].attributes;
    
    var form = $(attrs.for.value);
    switch (attrs.action.value) {
    case "clear":
      $.each(form[0], function(index, value) {
        $(value).val("");
      })
      event.preventDefault();
      break;
    case "add":
      form.submit();
      event.preventDefault();
      break;
    }
  })
})