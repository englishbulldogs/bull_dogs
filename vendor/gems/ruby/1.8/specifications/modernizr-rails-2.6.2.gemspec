# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{modernizr-rails}
  s.version = "2.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Russ Frisch"]
  s.date = %q{2013-02-06}
  s.description = %q{This Modernizr.js was built using the at http://www.modernizr.com/download/ with all options enabled.}
  s.email = ["russfrisch@shortmail.com"]
  s.files = [".gitignore", "Gemfile", "LICENSE.md", "Rakefile", "lib/modernizr-rails.rb", "lib/modernizr/rails/engine.rb", "lib/modernizr/rails/version.rb", "modernizr-rails.gemspec", "readme.md", "vendor/assets/javascripts/modernizr.js", "vendor/assets/javascripts/modernizr.min.js"]
  s.homepage = %q{http://rubygems.org/gems/modernizr-rails}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{modernizr-rails}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Gem wrapper to include the Modernizr.js library via the asset pipeline.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rails>, [">= 3.1.0"])
    else
      s.add_dependency(%q<rails>, [">= 3.1.0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1.0"])
  end
end
