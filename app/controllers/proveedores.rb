# Index
get '/proveedores' do
  redirect to '/' unless current_user
  @proveedores ||= []
  @proveedores = Proveedor.all
  erb :index do
    erb :proveedores do
      erb :proveedores_list
    end
  end
end
# Show
get '/proveedor/:id' do
  redirect to '/' unless current_user
  @proveedores ||= []
  @proveedores = Proveedor.find_by(id: params['id'])
  erb :index do
    erb :proveedores do
      erb :proveedor
    end
  end
end

get '/proveedor' do
  redirect to '/' unless current_user
  @proveedores ||= []
  @proveedores = Proveedor.find_by(correo: params['correo'])
  erb :index do
    erb :proveedores do
      erb :proveedor
    end
  end
end

# New
get '/proveedores/nuevo' do
  redirect to '/' unless current_user
  erb :index do
    erb :proveedores do
      erb :nuevo_proveedor
    end
  end
end
# Create
post '/proveedores' do
  redirect to '/' unless current_user
  puts params
  proveedores = Proveedor.create(
    nombre: params[:nombre],
    direccion: params[:direccion],
    telefono: params[:telefono],
    correo: params[:correo]
    )
  redirect to "/proveedor/#{proveedores.id}"
end

# Edit

# Update

# Delete
