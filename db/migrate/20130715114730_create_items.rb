class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :list
      t.string :title
      t.boolean :active

      t.timestamps
    end
  end
end
