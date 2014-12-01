#encoding: utf-8
class HomeController < ApplicationController

  def inicio
  	@titulo = 'Bienvenido a mi proyecto - PCV'
  end

  def localizacion
  	@titulo = "Localización - PCV"
  	@latitude = 38.164375
  	@longitude = -0.472782
  end

  def contacto
  	@titulo = "Contacto - PCV"

    if request.post?
      begin
        peticiones = cookies[:peticiones] || 0
        if Email.mail_admin(params, peticiones).deliver
          if Email.mail_contacto(params).deliver
            flash.now[:noticia] = 'El email ha sido enviado correctamente'
          else
            flash.now[:error] = 'No hemos podido enviarte la confirmación del envío de contacto.'
          end
        else
          flash.now[:error] = 'Se ha producido un error al enviar el mail de contacto.'
        end
      rescue
         flash.now[:error] = 'No se ha podido enviar el email de contacto.'
      end

    end

  end
end
