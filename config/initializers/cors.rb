Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins ['localhost:7000']
    resource '*', headers: :any, methods: :any
  end
end

# https://warm-reef-46815.herokuapp.com
