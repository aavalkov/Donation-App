class Npo < ActiveRecord::Base
  validates :name, :presence => true
  validates :account, :presence => true
end
