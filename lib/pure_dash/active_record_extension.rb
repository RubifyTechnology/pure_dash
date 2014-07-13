ActiveRecord::Base.instance_eval do
  def like(keyword)
    query = []
    columns_condition = self.columns.inject([]) do |array, el|
      array << "#{self.table_name}.#{el.name} LIKE :keyword" if (el.type == :string or el.type == :text)
      array
    end
    where(columns_condition.join(" OR "), keyword: "%#{keyword}%")    
  end
end