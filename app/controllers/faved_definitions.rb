post '/faved_definitions' do # Aware this is bad routing
  require_login
  @faved_definition = FavedDefinition.new(params[:fav_def])
  @faved_definition.user_id = current_user.id
  @faved_definition.save
  redirect '/users/show'
end

get '/users/:id/faved_definitions' do
  @user = User.find_by(id: params[:id])
  erb :'users/show'
end
