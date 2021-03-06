class Product < ActiveRecord::Base
  has_many :order_items
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment :image, :presence => true,
  :content_type => { :content_type => "image/png" },
  :size => { :in => 0..5.megabytes }
  default_scope { where(active: true) }
  
end