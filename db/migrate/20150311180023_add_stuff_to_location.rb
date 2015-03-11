class AddStuffToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :distance, :integer
    add_column :locations, :fuel_type, :string
  end
end
