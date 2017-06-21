collection @posts, root: 'posts', object_root: false
attributes :id, :title, :body, :imageUrl

child :comments, root: 'comments', object_root: false do
  attributes :id, :body, :date
end
