class CreateIncomes < ActiveRecord::Migration[5.2]
  def change
    create_table :incomes do |t|
      t.integer :money, null: false
      t.text :memo
      t.integer :user_id, foreign_key: true
      t.timestamps
    end
  end
end
