class AddColumnToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :address, :string
    add_column :locations, :search, :string
  end
end
