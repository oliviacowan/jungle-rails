class OrderMailerPreview < ActionMailer::Preview

  def order_confirmation
    OrderMailer.order_confirmation(Order.last)
  end

end