class RemoveContentToSpendings < ActiveRecord::Migration[5.2]
  def change
    remove_column :spendings, :content, :text
  end
end
