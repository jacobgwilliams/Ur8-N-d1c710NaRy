post '/faved_definitions' do
  require_login
  @faved_definition = FavedDefinition.new(params[:fav_def])
  @faved_definition.user_id = current_user.id
  @faved_definition.save
  redirect '/users/show'
end
