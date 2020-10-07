class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id
      t.string :name
      t.string :quantity
      t.boolean :have, default: false

      t.timestamps
    end
  end
end
