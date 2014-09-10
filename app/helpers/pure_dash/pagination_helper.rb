module PureDash
  module PaginationHelper
    def pure_dash_pagination(opts={})
      lis=[]
      opts[:total_pages].times do |index|
        active = index + 1 == opts[:page]
        a = content_tag(:a, index+1, data: index+1, href: "#", class: "pure-button #{active ? "pure-button-active" : ""}")
        lis.push(content_tag(:li, a, class: "#{active}"))
      end
      ul=content_tag(:ul, lis.join().html_safe, class: "pure-paginator", id: "#{opts[:filter]}_pagination")
      content_tag(:div, ul.html_safe, class: "light-theme simple-pagination")
    end
  end
end