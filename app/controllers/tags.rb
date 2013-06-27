get '/tags' do
  @all_tags = Tag.all
  erb :"tags/index"
end

