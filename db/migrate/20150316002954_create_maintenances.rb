class CreateMaintenances < ActiveRecord::Migration
  def change
    create_table :maintenances do |t|
      t.string :image
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
