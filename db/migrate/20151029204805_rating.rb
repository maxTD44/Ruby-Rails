class Rating < ActiveRecord::Migration
  def change
    create_table :rating do |t|
      t.column :rating, :integer
      t.column :recipe_id, :integer
    end
  end
end
