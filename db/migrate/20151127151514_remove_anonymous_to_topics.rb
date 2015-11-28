class RemoveAnonymousToTopics < ActiveRecord::Migration
  def change
    remove_column :topics, :anonymous
  end
end
