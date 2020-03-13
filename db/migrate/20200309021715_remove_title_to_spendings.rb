class RemoveTitleToSpendings < ActiveRecord::Migration[5.2]
  def change
    remove_column :spendings, :title, :string
  end
end
