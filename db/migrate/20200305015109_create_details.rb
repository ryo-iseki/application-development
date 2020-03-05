class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.string :title
      t.text :content
      t.datetime :start_time
      t.timestamps
    end
  end
end
