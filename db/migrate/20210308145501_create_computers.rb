class CreateComputers < ActiveRecord::Migration[6.0]
  def change
    create_table :computers do |t|
      t.string :sku
      t.string :name
      t.references :category, null: false, foreign_key: true
      t.string :photo_url

      t.timestamps
    end
  end
end
