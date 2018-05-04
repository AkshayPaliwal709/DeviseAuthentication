class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.string :url
      t.date :createdat
      t.string :content
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
