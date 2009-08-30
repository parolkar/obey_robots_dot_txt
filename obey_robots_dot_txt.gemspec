# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{obey_robots_dot_txt}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Abhishek Parolkar"]
  s.date = %q{2009-08-30}
  s.description = %q{Easy to use extension of Net::HTTP to let you obey robots.txt while crawling/scrapping/mining}
  s.email = ["abhishek@parolkar.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt"]
  s.files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "features/obey_robots_dot_txt.feature", "features/step_definitions/common_steps.rb", "features/step_definitions/obey_robots_dot_txt.rb", "features/support/common.rb", "features/support/env.rb", "features/support/matchers.rb", "lib/obey_robots_dot_txt.rb", "lib/obey_robots_dot_txt/robots_rule.rb", "script/console", "script/destroy", "script/generate", "spec/obey_robots_dot_txt_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/rspec.rake"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/parolkar/obey_robots_dot_txt}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{obey_robots_dot_txt}
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{Easy to use extension of Net::HTTP to let you obey robots.txt while crawling/scrapping/mining}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 2.3.2"])
    else
      s.add_dependency(%q<hoe>, [">= 2.3.2"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 2.3.2"])
  end
end
