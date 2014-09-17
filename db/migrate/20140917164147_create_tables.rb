class CreateTables < ActiveRecord::Migration
  def change
    create_table :npos do |t|
      t.string :name
      t.text :description
      t.integer :account
      t.float :balance
      t.timestamps
    end
  end
end
