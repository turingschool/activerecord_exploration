class RenameTypeColumnInBreed < ActiveRecord::Migration
  def change
    rename_column(:breeds, :type, :unused)
  end
end
