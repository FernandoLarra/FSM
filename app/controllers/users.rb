# Index

# Show
get '/users/:id' do
  @user = User.find_by(id: params['id']).get_name
  erb :owner_profile
end


# New
get '/user/new' do
  erb :new_user
end
# Create
post '/users' do
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

# Update

# Delete
