class RemoveUnusedColumnFromBreeds < ActiveRecord::Migration
  def change
    remove_column :breeds, :unused
  end
end
