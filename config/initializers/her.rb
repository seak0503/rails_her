RAILS_GARAGE = Her::API.new
RAILS_GARAGE.setup url: "http://localhost:3000/v1" do |c|
  # Request
  c.use Faraday::Request::UrlEncoded

  # Response
  c.use Her::Middleware::DefaultParseJSON

  # Adapter
  c.use Faraday::Adapter::NetHttp
end