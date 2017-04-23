class AddLngToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :lng, :float
  end
end
