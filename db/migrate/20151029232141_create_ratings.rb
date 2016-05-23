class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :recipe_id
      t.integer :rating

      t.timestamps null: false
    end

    drop_table :rating
  end
end
