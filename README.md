# FSM
Aplicación para farmacia San Miguel


# Requisitos
.- Ruby
.- Postgresql
.- Docker
.- Docker-compose

# Correrlo local
Clonar el repo
~~~
git clone 
cd FSM
bundle install
docker-compose up
rake db:migrate
bundle exec shotgun config.ru
~~~

# limpiar la base de datos local
~~~
rake db:drop
rake db:create
rake db:migrate
~~~

# Configurar DB
.- Definir usuario
~~~
crear usuario en DB
~~~
.- Modificar archivo config/database.yml
~~~
Definir credenciales
~~~