class CreateJockeys < ActiveRecord::Migration
  def change
    create_table :jockeys do |t|
      t.string :name
    end
  end
end
