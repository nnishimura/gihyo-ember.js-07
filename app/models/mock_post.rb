class MockPost < ActiveHash::Base
  include ActiveHash::Associations

  has_many :comments, foreign_key: :post_id, class_name: 'MockComment'

  delegate :as_json, to: :attributes

  fields :title, :body, :imageUrl

  create id: 1,
    title: 'Sample post 1',
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae mi ex. Nam vestibulum eleifend facilisis. Vivamus sit amet lacinia velit. In fringilla sed felis in ullamcorper. Integer ultrices quam sed odio accumsan, at facilisis magna interdum. Suspendisse placerat magna sit amet enim cursus posuere. Fusce eu dignissim urna, eget finibus enim. Donec sed ligula pharetra, pulvinar nunc id, iaculis mi. Donec id ultrices risus. Fusce faucibus dui at odio sagittis porta. Curabitur tempus mauris ante, sed mattis augue laoreet ut. Morbi gravida est non dui pharetra sagittis. Curabitur finibus, sapien quis consequat ullamcorper, nisl sapien hendrerit magna, vel convallis nunc purus vel tortor. Aenean eget tortor in libero pulvinar sagittis nec ac neque. Duis luctus sapien vitae ornare vestibulum.',
    imageUrl: 'http://placekitten.com/g/640/340'

  create id: 2,
    title: 'Sample post 2',
    body: 'Donec tempus, purus vitae tristique aliquam, velit elit semper lacus, sit amet iaculis nisi arcu vitae elit. Mauris porttitor ligula a risus mattis lobortis. Sed vitae neque ipsum. Nullam a suscipit nisl, nec iaculis leo. Quisque a mauris ultricies, gravida tellus in, gravida eros. Nullam ornare diam eget felis varius, ac finibus elit iaculis. Suspendisse eu ipsum convallis tellus malesuada ultricies eu in dolor. Aliquam ut sem et turpis hendrerit mollis. Sed sollicitudin, metus at rutrum tincidunt, magna sapien dictum lectus, et mattis ipsum magna at dolor. Phasellus viverra, mi et vestibulum posuere, velit elit iaculis turpis, eget faucibus dolor est eget massa. Praesent ornare, sem at aliquet suscipit, justo erat finibus tortor, vel luctus quam magna in mauris. Mauris non dignissim eros. Vivamus mattis ac sapien a luctus. Nulla vel iaculis erat.',
    imageUrl: 'http://placekitten.com/g/640/340'

  def comment_ids
    comments.map(&:id)
  end
end
