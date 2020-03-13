class CreateSpendingTags < ActiveRecord::Migration[5.2]
  def change
    create_table :spending_tags do |t|
      t.integer :spending_id, foreign_key: true
      t.integer :tag_id, foreign_key: true
      t.timestamps
    end
  end
end