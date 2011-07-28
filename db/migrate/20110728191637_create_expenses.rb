class CreateExpenses < ActiveRecord::Migration
  def self.up
    create_table :expenses do |t|
      t.string :name
      t.decimal :price
      t.boolean :paid
      t.boolean :monthly

      t.timestamps
    end
  end

  def self.down
    drop_table :expenses
  end
end
