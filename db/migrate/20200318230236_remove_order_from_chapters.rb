class RemoveOrderFromChapters < ActiveRecord::Migration[6.0]
  def change

    remove_column :chapters, :order, :integer
  end
end
