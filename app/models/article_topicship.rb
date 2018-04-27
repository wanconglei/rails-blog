class ArticleTopicship < ActiveRecord::Base
	belongs_to :article
	belongs_to :topic
end
