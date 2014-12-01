class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :peticiones


	def peticiones
	  	valor = (cookies[:peticiones] || '0').to_i
	  	cookies[:peticiones] =  { :value => (valor + 1).to_s, :expires => Time.now + 1.hour }
	  	@peticiones = cookies[:peticiones]
	end

end
