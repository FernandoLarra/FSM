# Index
get '/productos' do
  redirect to '/' unless current_user
  @productos ||= []
  @productos = Producto.all
  erb :index do
    erb :productos do
      erb :productos_list
    end
  end
end
# Show
get '/producto/:id' do
  redirect to '/' unless current_user
  @productos ||= []
  @productos = Producto.find_by(id: params['id'])
  erb :index do
    erb :productos do
      erb :producto
    end
  end
end

get '/producto' do
  redirect to '/' unless current_user
  @productos ||= []
  @productos = Producto.find_by(nombre_producto: params['nombre_producto'])
  erb :index do
    erb :productos do
      erb :producto
    end
  end
end

# New
get '/productos/nuevo' do
  redirect to '/' unless current_user
  erb :index do
    erb :productos do
      erb :nuevo_producto
    end
  end
end
# Create
post '/productos' do
  redirect to '/' unless current_user
  productos = Producto.create(
    serie: params[:serie],
    nombre_producto: params[:nombre_producto],
    peso: params[:peso],
    precio: params[:precio],
    marca: params[:marca],
    cantidad: params[:cantidad],
    fecha_caducidad: params[:fecha_caducidad]
    )
  redirect to "/producto/#{productos.id}"
end

# Edit

# Update

# Delete
