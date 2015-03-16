class Blog < ActiveRecord::Base

  validates :title, :content, :presence => true
  validates :title, :length => { :minimum => 2 }
  validates :title, :uniqueness => true

   #Blog.all(:order => "created_at DESC")
    #    searchable do
    #     text :title
    # end

    # searchable do
    # text :title, :body
    # text :comments do
    #   comments.map { |comment| comment.body }
    # end

    # boolean :featured
    # integer :blog_id
    # integer :author_id
    # integer :category_ids, :multiple => true
    # double  :average_rating
    # time    :published_at
    # time    :expired_at

    # string  :sort_title do
    #   title.downcase.gsub(/^(an?|the)/, '')
    # end
 # end

end
