class CreateBreed < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.text :type
    end
  end
end
