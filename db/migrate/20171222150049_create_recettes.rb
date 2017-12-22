class CreateRecettes < ActiveRecord::Migration[5.0]
  def change
    create_table :recettes do |t|
      t.string :titre
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
