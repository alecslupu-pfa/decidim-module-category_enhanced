# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "decidim/category_enhanced/version"

Gem::Specification.new do |s|
  s.version = Decidim::CategoryEnhanced.version
  s.authors = ["Alexandru Emil Lupu"]
  s.email = ["contact@alecslupu.ro"]
  s.license = "AGPL-3.0"
  s.homepage = "https://github.com/alecslupu-pfa/decidim-module-category_enhanced"
  s.required_ruby_version = ">= 3.0"

  s.name = "decidim-category_enhanced"
  s.summary = "A decidim category_enhanced module"
  s.description = "A gem that provides various enhancements to categories."

  s.files = Dir["{app,config,lib}/**/*", "LICENSE-AGPLv3.txt", "Rakefile", "README.md"]

  s.add_dependency "decidim-admin", "~> 0.27.0"
  s.add_dependency "decidim-core", "~> 0.27.0"
  s.add_dependency "deface", ">= 1.9"
end
