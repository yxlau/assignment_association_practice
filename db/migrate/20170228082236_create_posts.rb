class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false, index: true
      t.text :body
      t.references :category, foreign_key: true, index: true

      t.timestamps
    end
  end
end
