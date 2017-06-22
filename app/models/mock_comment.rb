class MockComment < ActiveHash::Base
  include ActiveHash::Associations
  belongs_to :post, class_name: 'MockPost'
  delegate :as_json, to: :attributes
  fields :date, :body, :post_id

end
