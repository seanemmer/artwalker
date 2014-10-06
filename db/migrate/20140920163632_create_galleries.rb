class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :website
      t.string :address
      t.string :description

      t.timestamps
    end
  end
end
