module ApplicationHelper

	def enlace_imagen imagen, size, path, clase
		link_to (image_tag imagen, :size => size), path, :class => clase
	end


  def is_active path
     'class=active' if current_page? path
  end

end
