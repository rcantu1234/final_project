class User < ActiveRecord::Base
  has_many :locations

  # geocoded_by :zip_code
  # after_validation :geocode, :if => :zip_code_changed?

end
