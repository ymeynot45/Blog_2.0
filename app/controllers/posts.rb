get '/posts/create' do
  erb :"posts/create"
end

post '/create' do
  @post = Post.create(params[:blog])
  post_id = @post.id
  redirect "/posts/#{post_id}"
end

get '/posts' do
  @all_posts = Post.all
  erb :"posts/index"
end

# Unicorns is our join table with post_id and tag_id

get '/posts/:id' do
  @indiv_post = Post.find(params[:id])
  @tags = @indiv_post.tags
  erb :"posts/individual_post"
end
