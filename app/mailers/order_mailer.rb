class OrderMailer < ApplicationMailer
  default from: "no-reply@jungle.com"
  
  def order_confirmation(order)
    @order = order
    mail(to: @order.email, subject: "Your order ID: #{@order.id}")
  end
end
