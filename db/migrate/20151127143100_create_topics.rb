class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.text :detail
      t.string :book_titile
      t.string :main_author
      t.boolean :anonymous
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
