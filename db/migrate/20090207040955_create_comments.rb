class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :user_id
      t.integer :posi_id
      t.text :content
      t.text :markup_content

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end