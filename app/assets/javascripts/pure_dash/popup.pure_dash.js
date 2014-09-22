popupPureDash = function (options) {
  var defaults = {
    title: 'Title popup',
    content: 'Content popup',
    params: '',
    width: 630,
    height:200,
    class: '',
    buttons: [{
      class: 'b-close',
      text: 'Cancel',
      click: function (event) {
        console.log(event)
      }
    },{
      class: 'button-red',
      text: 'Yes',
      click: function (event) {
        console.log(event)
      }
    }]
  }
  
  var opts = $.extend(defaults, options);
  var popup = $("<div/>").addClass("popup popup-dialog " + opts.class).height(opts.height).width(opts.width);
  var close_btn = $('<a/>').addClass('b-close').appendTo(popup);
  
  var h1 = $('<h1/>').html(opts.title).appendTo(popup);
  var h2 = $('<h2/>').html(opts.content).appendTo(popup);
  var h3 = $('<h3/>').html(opts.params).appendTo(popup);
  
  var footer = $("<div/>").addClass('float-right footer_popup').appendTo(popup);
  $.each(opts.buttons, function (index, button) {
    var btn = $('<button/>').html(button.text).addClass(button.class).appendTo(footer);
    btn.click(function(event) {
      button.click(event);
      popup.close();
    })
  });
  
  popup.bPopup({
    onClose: function () {
      popup.remove()
    }
  })
  
  popup.appendTo($('body'));
}

// <div style="width: 630px; height: 200px; left: 483.5px; position: absolute; top: 58.5px; z-index: 9999; opacity: 1; display: block;" class="popup popup-dialog popup-delete-group">
//   <a class="b-close"></a>
//   <h1>Delete Group</h1>
//   <h2>Are you sure you want to delete this group? You cannot undo this action.</h2>
//   <h3>Group 1</h3>
//   <div class="float-right footer_popup">
//     <button class="b-close">Cancel</button>
//     <button class="button-red button-delete">Delete</button>
//   </div>
// </div>