class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.decimal :amount, precision: 10, scale: 2
      t.text :description
      t.string :user

      t.timestamps
    end
  end
end
