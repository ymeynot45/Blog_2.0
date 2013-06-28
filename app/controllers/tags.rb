get '/tags/' do
  redirect '/tags'
end

get '/tags' do
  @all_tags = Tag.all
  erb :"tags/index"
end

get '/tags/:id' do
  @tag = Tag.find(params[:id])
  @posts_for_tag = @tag.posts
  erb :"tags/individual_tag"
end

get '/tags/:id/' do
  redirect "/tags/#{params[:id]}"
end
