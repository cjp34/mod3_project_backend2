class CreateRecipeIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_ingredients do |t|
      t.references :ingredient
      t.references :recipe
      t.integer :amount
      t.string :measurement

      t.timestamps
    end
  end
end
