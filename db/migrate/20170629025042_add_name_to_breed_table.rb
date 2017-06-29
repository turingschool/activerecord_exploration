class AddNameToBreedTable < ActiveRecord::Migration
  def change
    add_column :breeds, :name, :string
  end
end
