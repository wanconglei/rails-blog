class Article < ActiveRecord::Base
	has_one :key
	belongs_to :category
	has_many :comments, dependent: :destroy
	has_many :article_topicships
	has_many :topics, through: :article_topicships
	validates :title, presence: true,
					  length: {minimum: 5}				  
end
