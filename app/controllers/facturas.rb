# Index
get '/facturas' do
  redirect to '/' unless current_user
  @facturas ||= []
  @facturas = Factura.all
  erb :index do
    erb :facturas do
      erb :facturas_list
    end
  end
end
# Show
get '/factura/:no_factura' do
  redirect to '/' unless current_user
  @facturas ||= []
  @facturas = Factura.find_by(no_factura: params['no_factura'])
  erb :index do
    erb :facturas do
      erb :factura
    end
  end
end

get '/factura' do
  redirect to '/' unless current_user
  @facturas ||= []
  @facturas = Factura.find_by(nit: params['nit'])
  erb :index do
    erb :facturas do
      erb :factura
    end
  end
end

# New
get '/facturas/nuevo' do
  redirect to '/' unless current_user
  erb :index do
    erb :facturas do
      erb :nueva_factura
    end
  end
end
# Create
post '/facturas' do
  redirect to '/' unless current_user
  facturas = Factura.create(
    no_factura: params[:no_factura],
    fecha_emision: params[:fecha_emision],
    no_empleado: params[:no_empleado],
    serie: params[:serie],
    nit: params[:nit],
    cantidad_producto: params[:cantidad_producto],
    precio_producto:  params[:precio_producto],
    total: params[:total]
    )
  redirect to "/factura/#{factura.no_factura}"
end

# Edit

# Update

# Delete
