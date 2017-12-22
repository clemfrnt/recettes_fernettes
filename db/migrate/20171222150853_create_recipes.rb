class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :ingredients
      t.text :description
      t.integer :time
      t.string :difficulty
      t.string :material
      t.date :created_date
      t.references :utilisateur, foreign_key: true

      t.timestamps
    end
  end
end
