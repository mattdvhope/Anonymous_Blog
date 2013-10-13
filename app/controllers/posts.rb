
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
  @post = Post.create(params[:post])
  if @post.valid? 
    redirect to('/posts')
  else
    erb :post_new
  end
end

post '/posts' do
  p @posts = Post.all
  erb :posts
end
