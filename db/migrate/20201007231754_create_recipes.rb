class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.belongs_to :category
      t.string :name
      t.integer :rating

      t.timestamps
    end
  end
end
