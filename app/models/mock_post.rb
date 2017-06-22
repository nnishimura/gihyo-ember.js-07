class MockPost < ActiveHash::Base
  include ActiveHash::Associations

  has_many :comments, foreign_key: :post_id, class_name: 'MockComment'

  delegate :as_json, to: :attributes

  fields :title, :body, :imageUrl

  def comment_ids
    comments.map(&:id)
  end
end
