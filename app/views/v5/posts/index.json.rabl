object false
node :posts do
  @posts.as_json(only: %i(id title body imageUrl))
end

node :comments do
  @comments.map {|comment| comment.as_json(only: %i(id body date)).merge(:post => comment.post_id) }
end
