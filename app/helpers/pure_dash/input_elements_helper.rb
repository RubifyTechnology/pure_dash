module PureDash
  module InputElementsHelper
    def pure_dash_on_off_switch(opts={})
      class_rand = "ck_#{Random.new_seed.to_s[0..5]}"
      contents = []
      contents.push(tag(:input, type: "hidden", name: opts[:name] || "onoffswitch", value:'0'))
      contents.push(tag(:input,
          type: "checkbox",
          name: opts[:name] || "onoffswitch",
          class: "onoffswitch-checkbox opacity-0 #{class_rand}",
          id: "myonoffswitch",
          checked: (opts[:state].nil? ? true : opts[:state]), value:'1'
        )
      )
      
      contents.push(content_tag(:label, 
          [
            content_tag(:span, '', class: "onoffswitch-inner"),
            content_tag(:span, '', class: "onoffswitch-switch"),
          ].join.html_safe,
          class: "onoffswitch-label #{(opts[:state].nil? or opts[:state]) ? 'checked' : ''}", 
          for: "myonoffswitch",
          id: class_rand
        )
      )
      
      contents.push(javascript_tag("
        $('.#{class_rand}').change(function(event) {
          $('##{class_rand}').removeClass('checked').addClass($('.#{class_rand}')[0].checked ? 'checked' : '');
        });
      "))
      
      content_tag(:div, contents.join().html_safe, class: "onoffswitch")
    end
  end
end