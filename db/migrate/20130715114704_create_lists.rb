class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.boolean :active

      t.timestamps
    end
  end
end
