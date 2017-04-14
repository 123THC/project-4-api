class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.date :date
      t.float :hourly_rate
      t.string :address_line1
      t.string :address_line2
      t.string :address_line3
      t.string :address_line4
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
