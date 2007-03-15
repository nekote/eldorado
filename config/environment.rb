# Be sure to restart your web server when you modify this file.

# Uncomment below to force Rails into production mode when 
# you don't control web/app server and can't set it the proper way
# ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '1.2.1'

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  # Settings in config/environments/* take precedence those specified here
  
  # Skip frameworks you're not going to use (only works if using vendor/rails)
  config.frameworks -= [ :action_web_service, :action_mailer ]

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Force all environments to use the same logger level 
  # (by default production uses :info, the others :debug)
  # config.log_level = :debug

  # Use the database for sessions instead of the file system
  # (create the session table with 'rake db:sessions:create')
  config.action_controller.session_store = :active_record_store

  # Use SQL instead of Active Record's schema dumper when creating the test database.
  # This is necessary if your schema can't be completely dumped by the schema dumper, 
  # like if you have constraints or database-specific column types
  # config.active_record.schema_format = :sql

  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector

  # Make Active Record use UTC-base instead of local time
  config.active_record.default_timezone = :utc
  
  # See Rails::Configuration for more options
end

# Add new inflection rules using the following format 
# (all these examples are active by default):
Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
    inflect.uncountable %w( files )
end

# Include your application configuration below

PASSWORD_SALT = 'a0cfa6e4890663c6b64a95a5076f94addee20218' unless Object.const_defined?(:PASSWORD_SALT) # abazaba

AVATARS_PATH    = '/images/avatars/'
HEADERS_PATH    = '/images/headers/'
FILES_PATH      = ''

HEADERS_FULL_PATH = RAILS_ROOT + '/public/' + HEADERS_PATH

SITE_TITLE =    'El Dorado.org'
SITE_TAGLINE =  'All an elaborate, unapproachable, unprofitable, retributive joke'
SITE_FOOTER_1 = '<a href="http://www.almosteffortless.com">&aelig;</a> + <a href="http://www.tyrannybelle.com">tb</a> = kthxbye'
SITE_FOOTER_2 = 'Copyright &copy; 2004-' + Time.now.strftime("%Y") + ' <a href="http://www.newathens.org">NewAthens.org</a>'

INVITATION_ONLY = true
PRIVATE_SITE = false
