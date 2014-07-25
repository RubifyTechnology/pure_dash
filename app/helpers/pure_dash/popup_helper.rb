module PureDash
  module PopupHelper
    # =>  pure_dash_popup_list({
    # --    filter: "send_registration_reminder",
    # --    selector: "a.show_popup",
    # --    h1: "Title for popup",
    # --    h2: "Description for popup",
    # --    footer_class: "float-right",
    # --    width: "710px",
    # --    height: "420px",
    # --    list: ['items 001', 'items 002', 'items 003', 'items 004'],
    # --    buttons: [{
    # --      text: "Cancel",
    # --      class: "b-close",
    # --      onclick: "close"
    # --    },{
    # --      text: "Submit",
    # --      class: "button-red",
    # --      onclick: "function_name_of_javascript"
    # --    }]
    # --  })
    def pure_dash_popup_list(opts={})
      opts[:rand_popup] = "popup_#{Random.new_seed.to_s[0..5]}"
      opts[:type] = "popup_list"
      @contents = []
      init_popup(opts)
      lists = opts[:list].collect{|item| (content_tag(:li, item))}
      @contents.push(content_tag(:ul, lists.join.html_safe, class: "popup_content_list"))
      footer_popup(opts)
      @contents.push(javascript_tag("
        $('.#{opts[:rand_popup]}').find('.popup_content_list').mCustomScrollbar();
        $('#{opts[:selector]}').click(function(event){
          event.preventDefault();
          $('.#{opts[:rand_popup]}').bPopup();
        })
      "));
      
      return_popup(opts)
    end
    
    protected
    
    def return_popup(opts={})
      style = opts[:width] ? "width: #{opts[:width]};" : ""
      style += opts[:height] ? "height: #{opts[:height]};" : ""
      
      content_tag(:div, @contents.join.html_safe, class: "popup #{opts[:rand_popup]} #{opts[:filter]} #{opts[:type]}", style: style).html_safe
    end
    
    def init_popup(opts={})
      @contents.push(content_tag(:a, "", class: "b-close"))
      @contents.push(content_tag(:h1, opts[:h1])) if opts[:h1]
      @contents.push(content_tag(:h2, opts[:h2])) if opts[:h2]
    end
    
    def footer_popup(opts={})
      buttons = opts[:buttons].collect {|button| (content_tag(:button, button[:text], class: button[:class], onclick: "#{button[:onclick]}(this, '#{opts[:rand_popup]}')"))}
      @contents.push(content_tag(:div, buttons.join.html_safe, class: "#{opts[:footer_class]} footer_popup"))
    end
  end
end