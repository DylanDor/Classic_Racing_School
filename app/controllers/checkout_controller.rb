class CheckoutController < ApplicationController
  def create
    @items = current_user.cart.cart_items
    @total = params[:total].to_d
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: @items.map { |item|
        {
          price_data: {
            unit_amount: (item.driving_course.price*100).to_i,
            currency: 'eur',
            product_data: {
              name: item.driving_course.title,
            },
          },
          quantity: 1,
        }
      },
      allow_promotion_codes: true,
      mode: 'payment',
      success_url: checkout_success_url + '?session_id={CHECKOUT_SESSION_ID}',
      cancel_url: checkout_cancel_url
    )
    redirect_to @session.url, allow_other_host: true
  end

  def success
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
    @order = Order.create(user: current_user) if ( current_user.cart.cart_items.size >= 1 && @session.payment_status = "paid" )
  end

  def cancel
  end
end