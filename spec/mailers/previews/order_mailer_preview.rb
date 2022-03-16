# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview
  def welcome_email
    OrderMailer.welcome_email(Order.last)
  end

end
