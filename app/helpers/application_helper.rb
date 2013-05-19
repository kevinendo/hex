module ApplicationHelper
  
  def sortable(column, title = nil)
    title ||= column.titleize
    column = column == "trait.trait_name" ? "trait_name" : column
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc" 
    
    link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
    
  end
  
end
