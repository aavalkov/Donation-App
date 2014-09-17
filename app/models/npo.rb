class Npo < ActiveRecord::Base

  has_many :subscriptions
  has_many :donations

  validates :name, :presence => true
  validates :account, :presence => true
end
