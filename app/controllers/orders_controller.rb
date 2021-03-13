class OrdersController < ApplicationController
  def create
    computer = Computer.find(params[:computer_id])
    order = Order.create!(computer: computer, computer_sku: computer.sku, amount: computer.price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: computer.sku,
        images: [computer.photo_url],
        amount: computer.price_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )
    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end
  
  def show
    @order = current_user.orders.find(params[:id])
  end
end
