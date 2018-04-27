class CreateArticleTopicships < ActiveRecord::Migration
  def change
    create_table :article_topicships do |t|
      t.integer :article_id
      t.integer :topic_id

      t.timestamps null: false
    end
  end
end
