class Subscription < ActiveRecord::Base
  validates :name, :presence => true
  validates :interval, :presence => true
  validates :currency, :presence => true
  validates :amount, :presence => true
end
