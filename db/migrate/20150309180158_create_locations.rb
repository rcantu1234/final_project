class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :zip_code
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :locations, :users
  end
end
