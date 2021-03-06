# Log queries to STDOUT in development
if Sinatra::Application.development?
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end

# See http://www.rubyinside.com/ruby-techniques-revealed-autoload-1652.html
Dir[APP_ROOT.join('app', 'models', '*.rb')].each do |model_file|
  filename = File.basename(model_file).gsub('.rb', '')
  autoload ActiveSupport::Inflector.camelize(filename), model_file
end

# Heroku controls what database we connect to by setting the DATABASE_URL environment variable
# We need to respect that if we want our Sinatra apps to run on Heroku without modification
# db = URI.parse(ENV['DATABASE_URL'] || "postgres://postgres_container/#{APP_NAME}_#{Sinatra::Application.environment}")
db = URI.parse(ENV['DATABASE_URL'] || 'postgres://postgres_container')
DB_NAME = db.path[1..-1] # chomps off '/' because `db.path` is a path

# Note:
#   Sinatra::Application.environment is set to the value of ENV['RACK_ENV']
#   if ENV['RACK_ENV'] is set.  If ENV['RACK_ENV'] is not set, it defaults
#   to :development

ActiveRecord::Base.establish_connection(
:adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
:host => db.host,
:username => 'fsm',
# :username => db.user,
:password => 'fsm123',
# :password => db.password,
:database => 'farmacia',
# :database => DB_NAME,
:encoding => 'utf8'
  )
