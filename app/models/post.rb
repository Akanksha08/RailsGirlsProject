class Post < ActiveRecord::Base
	has_many :comments

  attr_accessible :content, :title, :photo
  validates :title, :content, presence: true
  validates_uniqueness_of :title, :message => "must be unique"
  
  mount_uploader :photo, PhotoUploader

end
