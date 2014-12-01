module HomeHelper

  def static_map latitude, longitude
    params = {
      :center => [latitude, longitude].join(","),
      :zoom => 16,
      :size => "500x350",
      :markers => [latitude, longitude].join(","),
      :sensor => true
      }
 
    query_string =  params.map{|k,v| "#{k}=#{v}"}.join("&")
    image_tag "http://maps.googleapis.com/maps/api/staticmap?#{query_string}"
  end


  def link_ver_detalles(url)
    link_to 'Ver detalles »', url, target:'blank', class: 'btn btn-default', role: 'button'
  end
end
