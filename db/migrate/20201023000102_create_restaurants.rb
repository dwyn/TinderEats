class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.cuisine :belongs_to

      t.timestamps
    end
  end
end
