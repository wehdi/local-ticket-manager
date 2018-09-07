# -*- encoding: utf-8 -*-
# stub: better_errors 2.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "better_errors".freeze
  s.version = "2.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Charlie Somerville".freeze]
  s.date = "2018-09-07"
  s.description = "Provides a better error page for Rails and other Rack apps. Includes source code inspection, a live REPL and local/instance variable inspection for all stack frames.".freeze
  s.email = ["charlie@charliesomerville.com".freeze]
  s.files = [".coveralls.yml".freeze, ".gitignore".freeze, ".travis.yml".freeze, ".yardopts".freeze, "CHANGELOG.md".freeze, "Gemfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "better_errors.gemspec".freeze, "gemfiles/pry010.gemfile".freeze, "gemfiles/pry011.gemfile".freeze, "gemfiles/pry09.gemfile".freeze, "gemfiles/rack.gemfile".freeze, "gemfiles/rack_boc.gemfile".freeze, "gemfiles/rails42.gemfile".freeze, "gemfiles/rails42_boc.gemfile".freeze, "gemfiles/rails42_haml.gemfile".freeze, "gemfiles/rails50.gemfile".freeze, "gemfiles/rails50_boc.gemfile".freeze, "gemfiles/rails50_haml.gemfile".freeze, "gemfiles/rails51.gemfile".freeze, "gemfiles/rails51_boc.gemfile".freeze, "gemfiles/rails51_haml.gemfile".freeze, "gemfiles/rails52.gemfile".freeze, "gemfiles/rails52_boc.gemfile".freeze, "gemfiles/rails52_haml.gemfile".freeze, "lib/better_errors.rb".freeze, "lib/better_errors/code_formatter.rb".freeze, "lib/better_errors/code_formatter/html.rb".freeze, "lib/better_errors/code_formatter/text.rb".freeze, "lib/better_errors/error_page.rb".freeze, "lib/better_errors/exception_extension.rb".freeze, "lib/better_errors/inspectable_value.rb".freeze, "lib/better_errors/middleware.rb".freeze, "lib/better_errors/rails.rb".freeze, "lib/better_errors/raised_exception.rb".freeze, "lib/better_errors/repl.rb".freeze, "lib/better_errors/repl/basic.rb".freeze, "lib/better_errors/repl/pry.rb".freeze, "lib/better_errors/stack_frame.rb".freeze, "lib/better_errors/templates/main.erb".freeze, "lib/better_errors/templates/text.erb".freeze, "lib/better_errors/templates/variable_info.erb".freeze, "lib/better_errors/version.rb".freeze]
  s.homepage = "https://github.com/charliesome/better_errors".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Better error page for Rails and other Rack apps".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5"])
      s.add_development_dependency(%q<rspec-its>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
      s.add_development_dependency(%q<kramdown>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<erubi>.freeze, [">= 1.0.0"])
      s.add_runtime_dependency(%q<coderay>.freeze, [">= 1.0.0"])
      s.add_runtime_dependency(%q<rack>.freeze, [">= 0.9.0"])
    else
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
      s.add_dependency(%q<rspec-its>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
      s.add_dependency(%q<kramdown>.freeze, [">= 0"])
      s.add_dependency(%q<erubi>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<coderay>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<rack>.freeze, [">= 0.9.0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
    s.add_dependency(%q<rspec-its>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<kramdown>.freeze, [">= 0"])
    s.add_dependency(%q<erubi>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<coderay>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<rack>.freeze, [">= 0.9.0"])
  end
end
