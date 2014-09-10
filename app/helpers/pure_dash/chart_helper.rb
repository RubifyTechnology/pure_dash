module PureDash
  module ChartHelper
    def pure_dash_chart_pie(data, opts={})
      @contents = []
      init(data, opts)
      colors_default(data, "pie")
      canvas = new_canvas(opts)
      add_notes_for_pie(data) if opts[:show_note]
      @contents.push(javascript_tag("
        var ctx_#{canvas[:id]} = $('##{canvas[:id]}')[0];
        var globalGraphSettings = {animation : Modernizr.canvas};
        if (window.verIE < 9) {FlashCanvas.initElement(ctx_#{canvas[:id]});}
        new Chart(ctx_#{canvas[:id]}.getContext('2d')).Pie(#{data.to_json}, globalGraphSettings);
      "))
        
      contents_show(opts)
    end
    
    def pure_dash_chart_doughnut(data, opts={})
      @contents = []
      init(data, opts)
      colors_default(data, "pie")
      canvas = new_canvas(opts)
      add_notes_for_pie(data) if opts[:show_note]
      @contents.push(javascript_tag("
        setTimeout(function(){
          var ctx = $('##{canvas[:id]}');
          new Chart(ctx[0].getContext('2d')).Doughnut(#{data.to_json});
        }, #{opts[:delay] || 2000});"))
      contents_show(opts)
    end
    
    def pure_dash_chart_line(data, opts={})
      @contents = []
      init(data, opts)
      colors_default(data[:datasets], "line")
      canvas = new_canvas(opts)
      add_notes_for_line(data) if opts[:show_note]
      @contents.push(javascript_tag("
        var ctx = document.getElementById('#{canvas[:id]}');
        new Chart(ctx.getContext('2d')).Line(#{data.to_json}, #{opts[:options].to_json});"))
      contents_show(opts)
    end
    
    def pure_dash_chart_bar(data, opts={})
      @contents = []
      init(data, opts)
      colors_default(data[:datasets], "bar")
      canvas = new_canvas(opts)
      add_notes_for_line(data) if opts[:show_note]
      @contents.push(javascript_tag("
        var ctx = document.getElementById('#{canvas[:id]}');
        new Chart(ctx.getContext('2d')).Bar(#{data.to_json});"))
      contents_show(opts)
    end
    
    def pure_dash_chart_table(data, opts={})
      init_table(data, opts)
    end
    
    protected
    
    def contents_show(opts={})
      content_tag(:div, @contents.join().html_safe, class: "chart", style: "width: #{opts[:max_width]}")
    end
    
    def init(data, opts={})
      opts = {
        title: nil,
        show_note: false
      }.merge(opts)
      @contents.push(content_tag(:span, opts[:title], class: "chart-title")) if opts[:title]
    end
    
    def add_notes_for_pie(data)
      notes_content = []
      data.each do |row|
        item_color = content_tag(:div, "", class: "item-color", style: "background-color:#{row["color"]}")
        item_text = content_tag(:span, "#{row[:label]} (#{row[:value]})", class: "item-text")
        notes_content.push(content_tag(:li, [item_color, item_text].join().html_safe))
      end
      @contents.push(content_tag(:ul, notes_content.join.html_safe, class: "chart-notes"))
    end
    
    def add_notes_for_line(data)
      notes_content = []
      data[:datasets].each do |row|
        item_color = content_tag(:div, "", class: "item-color", style: "background-color:#{row["strokeColor"]}")
        item_text = content_tag(:span, "#{row[:label]} (#{row[:data].sum})", class: "item-text")
        notes_content.push(content_tag(:li, [item_color, item_text].join().html_safe))
      end
      @contents.push(content_tag(:ul, notes_content.join.html_safe, class: "chart-notes"))
    end
    
    def new_canvas(opts={})
      opts = {
        width: "300",
        height: "300",
        id: "pie_#{Random.new_seed.to_s[0..5]}"
      }.merge(opts)
      tg = content_tag(:div, content_tag(:canvas, "", id: "#{opts[:id]}", width: "#{opts[:width]}", height: "#{opts[:height]}", style: " #{opts[:style]}").html_safe, class: "chart-viewer", style: "width: #{opts[:width]}")
      @contents.push(tg)
      return {tag: tg, id: opts[:id]}
    end
    
    def colors_default(data, template)
      file_name = "#{Rails.root}/config/chart_color.yml"
      if File.exists?(file_name)
        defaults = YAML.load_file(file_name)[template]
        data.each_with_index do |item, index|
          data[index] = defaults[index].merge(item)
        end
      end
    end
    
    
    # Chart for table
    def init_table(data, opts={})
      header_indexs = []
            
      thead_ths = []
      opts[:header].each_with_index do |header, index|
        thead_ths.push(content_tag(:th, header[1], class: opts[:class][index]))
        header_indexs.push(header[0])
      end
      thead_tr = content_tag(:tr, thead_ths.join().html_safe)
      thead = content_tag(:thead, thead_tr)
      
      index_column = Hash[header_indexs.map.with_index.to_a]
            
      trs = []
      data.each do |row|
        tds = []
        row.each do |attrs|
          tds[index_column[attrs[0]]] = content_tag(:td, attrs[1], class: opts[:class][index_column[attrs[0]]])
        end
        trs.push(content_tag(:tr, tds.join().html_safe))
      end
      tbody = content_tag(:tbody, trs.join().html_safe, style: opts[:tbody_style])
      content_tag(:table, [thead, tbody].join().html_safe, class: "table")
    end
    
  end
end