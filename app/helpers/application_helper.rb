module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    if column == sort_column
         if sort_direction == "asc" 
            css_class= "icon-chevron-up" 
         else
          	css_class= "icon-chevron-down"
         end
    else
    	css_class=nil
    end    
    	direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    	link_to title, {:sort => column, :direction => direction},{:class => css_class}
  end
end