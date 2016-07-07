Sequel::Model.plugin :schema
Sequel::Model.plugin :timestamps
Sequel::Model.raise_on_save_failure = false # Do not throw exceptions on failure


# Sequel::Model.db = case Padrino.env
#   when :development then Sequel.connect("sqlite://db/pcf_demo_blog_development.db", :loggers => [logger])
#   when :production  then Sequel.connect("sqlite://db/pcf_demo_blog_production.db",  :loggers => [logger])
#   when :test        then Sequel.connect("sqlite://db/pcf_demo_blog_test.db",        :loggers => [logger])
# end

credentials = CF::App::Credentials.find_by_service_name('smallelephant')
Sequel.connect(credentials['uri'], :loggers => [logger])

# or something like

# def config
#   vcap_services = JSON.parse(ENV.fetch("VCAP_SERVICES"))
#   vcap_services["smallelephant"])[0].fetch("credentials").fetch('uri')
# end
