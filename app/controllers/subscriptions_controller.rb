class SubscriptionsController < ApplicationController

  def index
    @npo = Npo.find(params[:npo_id])
    @subscriptions = Subscription.all
  end

  def new
    @npo = Npo.find(params[:npo_id])
    @subscription = Subscription.new
  end

  def create
    @npo = Npo.find(params[:npo_id])
    @subscription = Subscription.new(subscription_params)
    if @subscription.save
      flash[:notice] = "Your subscription was created!"
      redirect_to npo_subscriptions_path
    else
      render 'new'
    end
  end

  def show
    @subscription = Subscription.find(params[:id])
  end

  def edit
    @subscription = Subscription.find(params[:id])
  end

  def update
    @subscription = Subscription.find(params[:id])
    if @subscription.update(subscription_params)
      flash[:notice] = "Subscription updated"
      redirect_to subscriptions_path
    else
      render 'edit'
    end
  end

  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy
    flash[:notice]= "Subscription Deleted"
    redirect_to subscriptions_path
  end

private

  def subscription_params
    params.require(:subscription).permit(:npo_id, :interval, :currency, :name, :amount, :id)
  end
end
