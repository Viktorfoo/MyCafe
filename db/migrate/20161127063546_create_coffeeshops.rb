class CreateCoffeeshops < ActiveRecord::Migration
  def change
    create_table :coffeeshops do |t|
      t.string :name
      t.float :lat
      t.float :long
      t.text :address
      t.string :website
      t.text :description
      t.string :claimed
      t.string :email
      t.string :phone_office
      t.string :phone_mobile

      t.timestamps null: false
    end
  end
end
