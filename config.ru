require 'rack'
require 'rack/rewrite'
require 'rack/contrib/try_static'

# Build the static site when the app boots
`bundle exec middleman build`

# Enable proper HEAD responses
use Rack::Head
# Attempt to serve static HTML files
use Rack::TryStatic, :root => "tmp",     # where middleman files are generated
                     :urls => %w[/],       # match all requests
                     :try => ['.html', 'index.html', '/index.html'] # try these postfixes sequentially


# Use this Rack app to serve 404 messages
run lambda{ |env|
  not_found_page = File.expand_path("../build/404.html", __FILE__)
  if File.exist?(not_found_page)
    [ 404, { 'Content-Type'  => 'text/html'}, [File.read(not_found_page)] ]
  else
    [ 404, { 'Content-Type'  => 'text/html' }, ['404 - page not found'] ]
  end
}
