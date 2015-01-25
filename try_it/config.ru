require 'rubygems'
require 'bundler/setup'
require 'rack/codehighlighter'
require 'coderay'  # get one of supported highlighters

Bundler.require(:default)

use Rack::ConditionalGet
use Rack::ETag

use Rack::Codehighlighter, :coderay, 
  :element => "pre", :pattern => /\A:::(\w+)\s*\n/, :logging => false


