class FixPostIdComment < ActiveRecord::Migration
  def self.up
    rename_column :comments, :posi_id, :post_id
  end

  def self.down
    rename_column :comments, :post_id, :posi_id
  end
end
