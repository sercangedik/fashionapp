class AddImageFileSizeToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :image_file_size, :integer
  end
end
