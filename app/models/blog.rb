class Blog < ActiveRecord::Base

  validates :title, :content, :presence => true
  validates :title, :length => { :minimum => 2 }
  validates :title, :uniqueness => true

   #Blog.all(:order => "created_at DESC")

end
