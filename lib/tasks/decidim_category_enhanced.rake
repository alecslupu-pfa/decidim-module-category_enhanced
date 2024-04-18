# frozen_string_literal: true

namespace :decidim do
  namespace :category_enhanced do
    task :choose_target_plugins do
      ENV['FROM'] = "#{ENV.fetch('FROM', nil)},decidim_category_enhanced"
    end
  end
end

Rake::Task['decidim:choose_target_plugins'].enhance do
  Rake::Task['decidim:category_enhanced:choose_target_plugins'].invoke
end
