# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do |n|
  title  = "Sample post-#{n+1}"
  titleComment  = "Sample comment-#{n+1}"
  body = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus finibus diam a porttitor dictum. Nam pellentesque, est sit amet aliquet venenatis, felis felis iaculis velit, quis vestibulum felis mauris quis lorem. In varius libero justo, ac scelerisque urna tempor id. Quisque vehicula risus sit amet dui posuere, quis lobortis quam imperdiet. Suspendisse nec dictum leo, nec cursus magna. Morbi lobortis augue in lacus auctor luctus. Fusce aliquet lacus urna, nec dapibus augue placerat in."
  bodyComment = "sample comment-#{n+1}"
  imageUrl = "https://placekitten.com/g/640/38#{n+1}"
  Post.create!(title:  title,
              body: body,
              imageUrl: imageUrl
              )

  MockPost.create!(title:  title,
              body: body,
              imageUrl: imageUrl
              )

  Comment.create!(
              date: "2017/01/0#{n+1} 10:00",
              body: bodyComment,
              post_id: n+1
              )

  MockComment.create!(
              date: "2017/01/0#{n+1} 10:00",
              body: bodyComment,
              post_id: n+1
              )

end
