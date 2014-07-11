module PureDash
  module MainMenuHelper    
    def pure_dash_main_menu(menus)
      menus_content = []
      menus.each do |menu|
        menus_content << content_tag(:li, content_tag(:a, menu[:label], href: menu[:url]))
      end
      
      content_tag(:div, content_tag(:ul, menus_content.join.html_safe, class: "pure-dash-main-menu"), class: "pure-dash-main-menu-container pure-menu pure-menu-open pure-menu-horizontal")
    end
  end
end