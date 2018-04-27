class Topic < ActiveRecord::Base
	has_many :article_topicships
	has_many :articles, through: :article_topicships
end
