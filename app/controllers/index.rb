# /articles gives us a list of articles
get '/articles' do
  @articles = Article.all
  erb :index
end

get '/articles/:id' do
  @article = Article.find(params[:id])
  erb :show
end

post '/articles' do
  Article.create(title: params[:title])
  redirect '/articles'
end

put '/articles/:id' do
  p params
  @article = Article.find(params[:id])
  @article.update_attributes(title: params[:title])
  redirect "/articles/#{@article.id}"
end
