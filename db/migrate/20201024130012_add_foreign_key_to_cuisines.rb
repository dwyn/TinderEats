class AddForeignKeyToCuisines < ActiveRecord::Migration[6.0]
  def change
  	#changed to null: true from null: false while createing AR associations 
  	#restaurant_id could be null until association is created 
    add_reference :cuisines, :restaurant, null: true, foreign_key: true
  end
end
