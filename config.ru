require 'rubygems'
require 'bundler/setup'
require 'rack/codehighlighter'
require 'coderay'  # get one of supported highlighters

Bundler.require(:default)

use Rack::ConditionalGet
use Rack::ETag

require 'nesta/env'
require 'nesta/app'

Nesta::Env.root = ::File.expand_path('.', ::File.dirname(__FILE__))

use Rack::Codehighlighter, :coderay, :element => "pre>code", :markdown => true

run Nesta::App
