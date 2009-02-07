class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.integer :user_id
      t.string :tite
      t.text :content
      t.text :markup_content
      t.integer :comments_count

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
