# Index
get '/users' do
  redirect to '/' unless current_user
  @users = User.all
  erb :index do
    erb :owner_profile
  end
end
# Show
get '/users/:id' do
  redirect to '/' unless current_user
  @user = User.find_by(id: params['id'])
  # .get_name
  # erb :owner_profile
  erb :index do
    erb :user_profile
  end
end


# New
get '/user/new' do
  redirect to '/' unless current_user
  erb :index do
    erb :new_user
  end
end
# Create
post '/users' do
  redirect to '/' unless current_user
  user = User.create(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    password: params[:password])
  session[:user_id] = user.id
  # See README_Controllers for why we use the Post/Redirect/Get Pattern
  # instead of rendering a View in a post request
  redirect to "/users/#{user.id}"
end

# Edit
put '/users' do
  redirect to '/' unless current_user
  user = User.update(
    first_name: params[:first_name],
    last_name: params[:last_name]
    )
  puts user.inspect
  redirect to "users/#{user.id}"
end

# Update

# Delete
