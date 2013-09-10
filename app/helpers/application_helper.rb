module ApplicationHelper

   def logo
       # Fill in.
   end
  
   # Return a title on a per-page basis.
   def title
       base_title = "Control de Produccion"
       if @title.nil?
          base_title
       else
          "#{base_title} | #{@title}"
       end
   end


   def error_tag(error)
     unless error.blank?
      content_tag(:span, error.is_a?(Array) ? error.first : error, :class => :error)
     end
   end

   def display_base_errors resource
      return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
      messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
      html = <<-HTML
      <div class="alert alert-error alert-block">
        <button type="button" class="close" data-dismiss="alert">&#215;</button>
        #{messages}
      </div>
      HTML
      html.html_safe
   end

  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end
 
end
