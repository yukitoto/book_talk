class ChangeColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :user_name,:string,:after => :id
    add_column :users, :introduction,:text,:after => :email

    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
  end
end
