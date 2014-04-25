class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.decimal :age
      t.string :gender
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :email
      t.decimal :phone
      t.string :status
      t.text :term_and_condition
      t.string :pay_type

      t.timestamps
    end
  end
end
