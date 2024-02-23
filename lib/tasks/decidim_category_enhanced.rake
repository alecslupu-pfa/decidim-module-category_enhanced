# frozen_string_literal: true

Rake::Task["decidim:choose_target_plugins"].enhance do
  Rake::Task["decidim_category_enhanced:install:migrations"].invoke
end
