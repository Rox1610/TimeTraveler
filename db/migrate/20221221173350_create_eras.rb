class CreateEras < ActiveRecord::Migration[7.0]
  def change
    create_table :eras do |t|
      t.string :title
      t.text :content
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
