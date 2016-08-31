class RenameDateColumnToFavorites < ActiveRecord::Migration
  def change
     rename_column :favorites, :post_id, :tweet_id
  end
end
