class AddImageUpdatedAtToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :image_updated_at, :datetime
  end
end
