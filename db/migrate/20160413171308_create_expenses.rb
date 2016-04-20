class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :expenses
      t.integer :amount

      t.timestamps
    end
  end
end
