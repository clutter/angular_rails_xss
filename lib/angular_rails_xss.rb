require 'angular_rails_xss/cgi'
require 'angular_rails_xss/escaper'
require 'angular_rails_xss/version'

CGI.prepend(AngularRailsXSS::CGI)
