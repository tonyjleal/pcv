class Email < ActionMailer::Base
  default from: "ruby@rails.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.contacto.subject
  #
  def mail_contacto(params)
    @nombre = params[:nombre]
    @email = params[:email]
    @asunto = 'Alerta envío mail'
    @mensaje = params[:mensaje]

    mail to: @email, subject: @asunto do |format|
      format.text
      format.html
    end

  end

  def mail_admin(params, peticiones)
    @nombre = params[:nombre]
    @email = params[:email]
    @asunto = params[:asunto]
    @mensaje = params[:mensaje]
    @peticiones = peticiones

    #sustituir por email admin
    mail to: 'email_admin', subject: @asunto do |format|
      format.text
      format.html
    end

  end


end
