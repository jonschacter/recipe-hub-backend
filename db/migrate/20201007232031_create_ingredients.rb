class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.belongs_to :recipe
      t.string :name
      t.string :quantity
      t.boolean :have, default: false

      t.timestamps
    end
  end
end
