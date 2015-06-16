$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "locales_admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "locales_admin"
  s.version     = LocalesAdmin::VERSION
  s.authors     = ["aditiamahdar"]
  s.email       = ["adit@41studio.com"]

  s.homepage    = "https://github.com/aditiamahdar/locales_admin"
  s.summary     = %q{Made easier to manage your locales and so your client can update too.}
  s.description = %q{Locales Admin gem will provide front end editor for you or website administrator to manage locales files.}
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4"
  s.add_dependency "jquery-rails", "~> 4"

  s.add_development_dependency "sqlite3", "~> 1"
end
