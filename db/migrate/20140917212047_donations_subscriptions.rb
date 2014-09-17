class DonationsSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do|t|
      t.belongs_to :user
      t.belongs_to :npo
      t.string :interval
      t.string :currency
      t.integer :amount
      t.string :name
      t.timestamps
    end

    create_table :donations do |t|
      t.belongs_to :user
      t.belongs_to :npos
      t.integer :amount
      t.string :currency
    end
  end
end
