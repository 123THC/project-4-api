Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins ['localhost:7000', 'https://warm-reef-46815.herokuapp.com', 'https://infinite-retreat-22521.herokuapp.com']
    resource '*', headers: :any, methods: :any
  end
end
