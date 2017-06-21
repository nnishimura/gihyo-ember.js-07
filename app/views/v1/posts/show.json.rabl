object false
node :post do
  @post.as_json(only: %i(id title body imageUrl))
end

node :comments do
  @post.comments.map {|comment| comment.as_json(only: %i(id body)).merge(:post => comment.post_id) }
end
