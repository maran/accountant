class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :expense_id
      t.integer :category_id
      t.datetime :created_at

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
