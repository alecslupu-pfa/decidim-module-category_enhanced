# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "decidim/category_enhanced/version"

Gem::Specification.new do |s|
  s.version = Decidim::CategoryEnhanced.version
  s.authors = ["Alexandru Emil Lupu"]
  s.email = ["contact@alecslupu.ro"]
  s.license = "AGPL-3.0"
  s.homepage = "https://github.com/decidim/decidim-module-category_enhanced"
  s.required_ruby_version = ">= 3.0"

  s.name = "decidim-category_enhanced"
  s.summary = "A decidim category_enhanced module"
  s.description = "A gem that provides various enhancements to categories."

  s.files = Dir["{app,config,lib}/**/*", "LICENSE-AGPLv3.txt", "Rakefile", "README.md"]

  s.add_dependency "decidim-core", Decidim::CategoryEnhanced.version
end
