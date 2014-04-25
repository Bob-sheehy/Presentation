class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2
      t.decimal :value, precision: 8, scale: 2
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :status
      t.text :terms

      t.timestamps
    end
  end
end
