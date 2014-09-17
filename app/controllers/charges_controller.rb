class ChargesController < ApplicationController

  def new
  end

  def create
    # Amount in cents
    @amount = params[:amount]
    @amount = ((@amount.to_f)*100).to_i
    @npo = params[:npo_id]

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :plan => @npo.subscription.name,
      :card  => params[:stripeToken]

    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
