module PureDash
  module MainMenuHelper    
    def pure_dash_main_menu(menus)
      menus_content = []
      sub_menu_contents = []
      menus.each do |menu|
        if menu[:active]          
          if menu[:sub_menus]          
            menu[:sub_menus].each do |sub_menu|
              sub_menu_contents << content_tag(:li, content_tag(:a, sub_menu[:label], href: sub_menu[:url]), class: sub_menu[:active] ? 'active' : '')
            end  
          end
        end
        menus_content << content_tag(:li, content_tag(:a, menu[:label], href: menu[:url]), class: menu[:active] ? 'active' : '')
        
      end
      
      content_tag(:div, content_tag(:ul, menus_content.join.html_safe, class: "pure-dash-main-menu"), class: "pure-dash-main-menu-container pure-menu pure-menu-open pure-menu-horizontal") + (sub_menu_contents.length > 0 ? content_tag(:div, content_tag(:ul, sub_menu_contents.join.html_safe), class: "pure-menu pure-menu-open pure-menu-horizontal pure-dash-sub-menu-container") : "")
    end
  end
end