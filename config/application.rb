require 'tails'

# Allow us to require controller files without specifying the path
$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'app', 'controllers')

module BestQuotes
  class Application < Tails::Application
  end
end
