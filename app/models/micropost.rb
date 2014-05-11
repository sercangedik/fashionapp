class Micropost < ActiveRecord::Base
  attr_accessible :content,:category,:image
  has_many :comment
  belongs_to :user
  
  validates :content, :presence => true, :length => { :maximum => 140 }
  validates :user_id, :presence => true
  validates :category, :presence => true
  validates :image, :presence => true
  
  has_attached_file :image , styles: { :medium => "300x300>", :thumb => "100x100>" }
  
  default_scope :order => 'microposts.created_at DESC'
end
