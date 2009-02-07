class ModifyPostTable < ActiveRecord::Migration
  def self.up
    change_column_default :users, :posts_count, 0
    change_column_default :posts, :comments_count, 0
    
    rename_column :posts, :tite, :title
  end

  def self.down
    change_column_default :users, :posts_count, nil
    change_column_default :posts, :comments_count, nil
    
    rename_column :posts, :title, :tite
  end
end
