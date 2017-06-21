class MockComment < ActiveHash::Base
  include ActiveHash::Associations

  belongs_to :post, class_name: 'MockPost'

  delegate :as_json, to: :attributes

  fields :date, :body, :post_id

  create id: 1,
    date: '2017/01/11 10:00',
    body: 'Hi there',
    post_id: 1

  create id: 2,
    date: '2017/01/11 11:00',
    body: 'I am a comment',
    post_id: 1

  create id: 3,
    date: '2017/01/11 12:00',
    body: 'you can comment more below',
    post_id: 2
end
