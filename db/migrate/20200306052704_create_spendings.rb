class CreateSpendings < ActiveRecord::Migration[5.2]
  def change
    create_table :spendings do |t|
      t.integer :money, null:false
      t.text :memo, null:false
      t.datetime :start_time
      t.references :user, foreign_key: true
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end

