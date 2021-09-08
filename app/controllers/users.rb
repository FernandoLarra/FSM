# Index
get '/users' do
  redirect to '/' unless current_user
  @users = User.all
  erb :index do
    erb :users do
      erb :owner_profile
    end
  end
end
# Show
get '/users/:id' do
  redirect to '/' unless current_user
  @user = User.find_by(id: params['id'])
  erb :index do
    erb :users do
      erb :user_profile
    end
  end
end

get '/user' do
  redirect to '/' unless current_user
  @user = User.find_by(email: params['email'])
  erb :index do
    erb :users do
      erb :user_profile
    end
  end
end


# New
get '/user/new' do
  # redirect to '/' unless current_user
  erb :index do
    erb :users do
      erb :new_user
    end
  end
end
# Create
post '/users' do
  puts params
  # redirect to '/' unless current_user
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
