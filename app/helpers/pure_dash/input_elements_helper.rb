module PureDash
  module InputElementsHelper
    def pure_dash_on_off_switch(opts={})
      content_tag(:div, [tag(:input, type: "hidden", name: opts[:name] || "onoffswitch", value:'0'), tag(:input, type: "checkbox", name: opts[:name] || "onoffswitch", class: "onoffswitch-checkbox", id: "myonoffswitch", checked: (opts[:state].nil? ? true : opts[:state]), value:'1'),
        content_tag(:label, 
          [
            content_tag(:span, '', class: "onoffswitch-inner"),
            content_tag(:span, '', class: "onoffswitch-switch"),
          ].join.html_safe,
        class: "onoffswitch-label", for: "myonoffswitch")
      ].join.html_safe , class: "onoffswitch")
    end
  end
end