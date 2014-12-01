# Preview all emails at http://localhost:3000/rails/mailers/email
class EmailPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/email/contacto
  def contacto
    Email.contacto
  end

end
