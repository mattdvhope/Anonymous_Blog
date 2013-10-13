
get '/posts' do
  @posts = Post.all
  erb :posts
end

post '/posts' do
  puts params.inspect
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :post_show
end

get '/post/new' do
  @post = Post.new(params[:post])
  erb :post_new
end

post '/posts' do
  @post = Post.new(params[:post])
  if @post.save 
    redirect to('/')
  else
    erb :post_new
  end
end
