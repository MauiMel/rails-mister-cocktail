class AddDescriptionToDoses < ActiveRecord::Migration[5.2]
  add_column :doses, :description, :text
  def change
  end
end
