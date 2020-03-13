class AddSortToSpendings < ActiveRecord::Migration[5.2]
  def change
    add_column :spendings, :sort, :string
  end
end
