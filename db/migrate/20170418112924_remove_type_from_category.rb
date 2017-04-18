class RemoveTypeFromCategory < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :type, :string
  end
end
