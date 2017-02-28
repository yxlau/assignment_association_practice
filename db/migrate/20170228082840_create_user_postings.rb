class CreateUserPostings < ActiveRecord::Migration[5.0]
  def change
    create_table :user_postings do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
