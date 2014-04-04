class CreateGroceries < ActiveRecord::Migration
  def change
    create_table :groceries do |t|
      t.string :name
      t.string :location
      t.boolean :saved, default: false
      t.boolean :checked, default: false

      t.timestamps
    end
  end
end
