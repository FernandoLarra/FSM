get '/' do
  if current_user
    # redirect to "/users/#{current_user.id}"
    erb :index
  else
    erb :login
  end
end