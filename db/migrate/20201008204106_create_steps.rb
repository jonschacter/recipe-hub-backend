class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.integer :number
      t.integer :recipe_id
      t.text :description

      t.timestamps
    end
  end
end
