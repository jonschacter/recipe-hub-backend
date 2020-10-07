class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :name
      t.integer :rating

      t.timestamps
    end
  end
end
