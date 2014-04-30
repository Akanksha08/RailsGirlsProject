class Comment < ActiveRecord::Base
	belongs_to :posts
  attr_accessible :body, :post_id, :user_name
end
