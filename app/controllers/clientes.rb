# Index
get '/clientes' do
  redirect to '/' unless current_user
  @clientes ||= []
  @clientes = Cliente.all
  erb :index do
    erb :clientes do
      erb :clientes_list
    end
  end
end
# Show
get '/cliente/:nit' do
  redirect to '/' unless current_user
  @clientes ||= []
  @clientes = Cliente.find_by(nit: params['nit'])
  erb :index do
    erb :clientes do
      erb :cliente
    end
  end
end

get '/cliente' do
  redirect to '/' unless current_user
  @clientes ||= []
  @clientes = Cliente.find_by(nit: params['nit'])
  erb :index do
    erb :clientes do
      erb :cliente
    end
  end
end


# New
get '/clientes/nuevo' do
  redirect to '/' unless current_user
  erb :index do
    erb :clientes do
      erb :nuevo_cliente
    end
  end
end
# Create
post '/clientes' do
  redirect to '/' unless current_user
  
  clientes = Cliente.create(
    nombre: params[:nombre],
    apellidos: params[:apellidos],
    direccion: params[:direccion],
    telefono: params[:telefono],
    nit: params[:nit]
    )
  clientes.inspect
  redirect to "/cliente/#{clientes.nit}"
end

# Edit

# Update

# Delete
