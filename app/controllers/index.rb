
get '/' do
  @posts = Post.order('title ASC')
  erb :index
end

