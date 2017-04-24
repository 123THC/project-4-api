Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins ['https://warm-reef-46815.herokuapp.com']
    resource '*', headers: :any, methods: :any
  end
end
