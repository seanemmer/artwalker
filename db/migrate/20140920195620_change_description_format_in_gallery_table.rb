class ChangeDescriptionFormatInGalleryTable < ActiveRecord::Migration
  def up
    change_column :galleries, :description, :text
  end

  def down
    change_column :galleries, :description, :string
  end
end
