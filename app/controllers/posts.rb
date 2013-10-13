
get '/posts' do
  @posts = Post.all
  erb :posts
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :post_show
end

get '/post/new' do
  erb :post_new
end

post '/post/new' do
  if @post.valid? 
    erb :posts
  else
    erb :post_new
  end
end

post '/posts' do
  params.inspect
  # @post = Post.create(params[:post])
  # erb :posts
end
