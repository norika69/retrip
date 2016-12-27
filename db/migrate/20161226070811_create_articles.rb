class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title, null:false
      t.string :text, null:false
      t.text :image
      t.references :user, null:false, foreign_key: true
      t.references :tag, null:false, foreign_key: true
      t.references :location, null:false, foreign_key: true
      t.timestamps
    end
    add_index :articles, :title
  end
end
