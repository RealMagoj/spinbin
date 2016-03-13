# Homepage (Root path)
get '/index' do
  @users = User.all
  erb :"/listings/index"
end

get '/new' do
  @user = User.new
  erb :"/listings/new"
end

post '/index' do
  logger.info(params)
  @user = User.new(
    dj_name: params[:dj_name],
    genre: params[:genre],
    bio: params[:bio],
    venues: params[:venues],
    url: params[:url]
  )
  if @user.save
    redirect '/index'
  else
    erb :'listings/new'
  end
end

get '/index/:id' do
  @user = User.find params[:id]
  erb :"/listings/details"
end