# frozen_string_literal: true

base_path = File.expand_path("..", __dir__)

Decidim::Webpacker.register_path("#{base_path}/app/packs")
Decidim::Webpacker.register_entrypoints(
  decidim_category_enhanced: "#{base_path}/app/packs/entrypoints/decidim_category_enhanced.js",
  decidim_category_enhanced_admin: "#{base_path}/app/packs/entrypoints/decidim_category_enhanced_admin.js"
)
Decidim::Webpacker.register_stylesheet_import("stylesheets/decidim/category_enhanced/category_enhanced")
