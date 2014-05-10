class AddImageContentTypeToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :image_content_type, :string
  end
end
