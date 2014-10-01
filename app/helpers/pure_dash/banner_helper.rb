module PureDash
  module BannerHelper
    def pure_dash_banner(opts={})
      opts = {
        company_logo: "/assets/sample_logo.png",
        slogan: "helping company grows",
        rhs_buttons: [{
          label: "Logout",
          url: "/users/sign_out",
          method: "delete"
        }]        
      }.merge(opts)
      slogan_content = content_tag(:div, opts[:slogan], class: "company-slogan")
      company_logo_content = content_tag(:a, content_tag(:div, image_tag(asset_path(opts[:company_logo])).html_safe, class: "company-logo") + slogan_content.html_safe, class: "pure-menu-heading", href: "/")
      
      button_tags = []
      opts[:rhs_buttons].each do |button|
        button_tags << content_tag(:li, (button[:content] ? button[:content] : link_to(button[:label], button[:url], class: ["rhs-button", button[:class]].compact.join(" "), method: button[:method], data: {no_turbolink: true})))
      end
      
      rhs_buttons_content = content_tag(:ul, button_tags.join.html_safe, class: "rhs-buttons")
      content_tag(:div, content_tag(:div, [company_logo_content, rhs_buttons_content].join.html_safe, class: "home-menu pure-menu pure-menu-open pure-menu-horizontal"), class: "pure-dash-banner")
    end
    
    def pure_dash_header(opts={})
      opts = {
        rhs_buttons: [{
          label: "Logout",
          url: "/users/sign_out",
          method: "delete"
        }]        
      }.merge(opts)
      
      list = []
      opts[:rhs_buttons].each do |button|
        list << content_tag(:li, (button[:content] ? button[:content] : link_to(button[:label], button[:url], class: ["rhs-button", button[:class]].compact.join(" ").html_safe, method: button[:method], data: {no_turbolink: true})), class: button[:class] ? button[:class] : "", style: button[:style] ? button[:style] : "")
      end
      
      logo = content_tag(:div, content_tag(:a, [content_tag(:div, '', class: 'logo'), content_tag(:div, '', class: 'motto')].join().html_safe, href: "/"), class: 'unit-1-2')
      navi = content_tag(:div, content_tag(:div, content_tag(:ul, list.join().html_safe, class: 'display'), class: "nav"), class: 'unit-1-2')
            
      content_tag(:section, content_tag(:div, content_tag(:div, content_tag(:div, [logo, navi].join().html_safe, class: 'grid'), class: 'content'), class: 'wrapper').html_safe, class: "header")
    end

    
    def pure_dash_main_menu(menus)
      menus_content = []
      menus.each do |menu|
        menus_content << content_tag(:li, content_tag(:a, menu[:label], href: menu[:url]))
      end
      
      content_tag(:div, content_tag(:ul, menus_content.join.html_safe, class: "pure-dash-main-menu"), class: "pure-dash-main-menu-container pure-menu pure-menu-open pure-menu-horizontal")
    end
  end
end