class OrderMailerPreview < ActionMailer::Preview

  def welcome_email
    OrderMailer.welcome_email(Order.last)
  end

end