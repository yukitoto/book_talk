class RenameTitileColumnToTitle < ActiveRecord::Migration
  def change
    rename_column :topics, :book_titile, :book_title
  end
end
