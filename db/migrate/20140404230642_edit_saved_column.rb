class EditSavedColumn < ActiveRecord::Migration
  def change
    change_column :groceries, :saved, :boolean, default: true
  end
end
