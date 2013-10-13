
get '/posts' do
  @posts = Post.all
  erb :posts
end

post '/posts' do
  erb :posts
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :post_show
end

get '/post/new' do
  p "Hello"
  erb :post_new
end

post '/post/new' do
  @post = Post.create(:title => params[:title], :body => params[:body])
  erb :posts
end
