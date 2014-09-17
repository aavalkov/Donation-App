class Subscription < ActiveRecord::Base
  validates :name, :presence => true
  validates :interval, :presence => true
  validates :currency, :presence => true
  validates :amount, :presence => true

  before_create :create_plan

private
  def create_plan
    Stripe.api_key = ENV['SECRET_KEY']
    Stripe::Plan.create(
      :amount => self.amount,
      :interval => self.interval,
      :name => self.name,
      :currency => self.currency,
      :id => self.name
    )
  end
end
