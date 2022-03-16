class OrderMailer < ApplicationMailer
  default from: "no-reply@jungle.com"
  # layout 'mailer'
  def welcome_email(order)
    @order = order
    @url  = 'http://0.0.0.0:3000/'
    mail(to: 'user.email', subject: 'Thank you for you purchase')
  end
end
