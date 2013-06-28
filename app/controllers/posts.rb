get '/posts/create' do
  erb :"posts/create"
end

post '/create' do
  @post = Post.create(params[:blog])
  tag_id = Tag.find_or_create_by_name(params[:tag]).id
  post_id = @post.id
  @new_tag = Unicorn.create(post_id: post_id, tag_id: tag_id)
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
