class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :address_line1
      t.string :address_line2
      t.string :address_line3
      t.string :address_line4

      t.timestamps
    end
  end
end
