class AddImageFileNameToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :image_file_name, :string
  end
end
