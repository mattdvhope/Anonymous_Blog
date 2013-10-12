
get '/posts' do
  @posts = Post.all
  erb :posts
end

post '/posts' do
  @post = Post.create(:title => params[:title], :body => params[:body])
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :post_show
end


