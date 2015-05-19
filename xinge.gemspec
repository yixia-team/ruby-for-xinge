# -*- encoding: utf-8 -*-
# stub: ruby-for-xinge 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-for-xinge"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Robot Jiang"]
  s.bindir = "exe"
  s.date = "2015-05-11"
  s.description = "\u{817e}\u{8baf} \u{4fe1}\u{9e3d} Rest API for Ruby"
  s.email = ["robot.z.jiang@gmail.com"]
  s.files = [".gitignore", ".rspec", ".travis.yml", "CODE_OF_CONDUCT.md", "Gemfile", "Gemfile.lock", "LICENSE.txt", "README.md", "Rakefile", "bin/console", "bin/setup", "lib/xinge.rb", "lib/xinge/android.rb", "lib/xinge/base.rb", "lib/xinge/ios.rb", "lib/xinge/notification.rb", "lib/xinge/version.rb", "xinge.gemspec"]
  s.homepage = "https://github.com/RobotJiang/ruby-for-xinge"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "A Ruby portal for Tencent Xinge"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<httparty>, ["~> 0.13.3"])
      s.add_development_dependency(%q<bundler>, ["~> 1.8"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<httparty>, ["~> 0.13.3"])
      s.add_dependency(%q<bundler>, ["~> 1.8"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>, ["~> 0.13.3"])
    s.add_dependency(%q<bundler>, ["~> 1.8"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
