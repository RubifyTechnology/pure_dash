module PureDash
  module MainMenuHelper    
    def pure_dash_main_menu(menus)
      menus_content = []
      sub_menu_contents = []
      menus.each do |menu|
        active = check_active_menus(menu[:active])
        if active == "active" and menu[:sub_menus]
          menu[:sub_menus].each do |sub_menu|
            sub_menu_contents << content_tag(:li, content_tag(:a, sub_menu[:label], href: sub_menu[:url]), class: check_active_menus(sub_menu[:active]))
          end
        end
        menus_content << content_tag(:li, menu[:content] ? menu[:content] : content_tag(:a, menu[:label], href: menu[:url]), class: active)
      end
      
      content_tag(:div, content_tag(:div, content_tag(:ul, menus_content.join.html_safe, class: "pure-dash-main-menu"), class: "pure-dash-main-menu-container pure-menu pure-menu-open pure-menu-horizontal") + (sub_menu_contents.length > 0 ? content_tag(:div, content_tag(:ul, sub_menu_contents.join.html_safe), class: "pure-menu pure-menu-open pure-menu-horizontal pure-dash-sub-menu-container") : ""), class: "pure-dash-menu-container") + content_tag(:div, content_tag(:span, ""), class: "open-menu-link glyphicon glyphicon-align-justify")
    end
    
    protected
    
    def check_active_menus(active)
      return active.select{|item| check_active_item(item)}.count > 0 ? 'active' : '' if active.is_a? Array
      return check_active_item(active) ? 'active' : '' if active.is_a? String
      return active ? 'active' : '' # True or False
    end
    
    def check_active_item(item)
      return item if !!item == item
      (item.index('#').nil? and item == params[:controller]) or ("#{params[:controller]}##{params[:action]}" == item)
    end
      
  end
end