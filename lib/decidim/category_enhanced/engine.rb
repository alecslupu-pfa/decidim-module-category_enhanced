# frozen_string_literal: true

require "rails"
require "decidim/core"

module Decidim
  module CategoryEnhanced
    # This is the engine that runs on the public interface of category_enhanced.
    class Engine < ::Rails::Engine
      isolate_namespace Decidim::CategoryEnhanced

      routes do
        # Add engine routes here
        # resources :category_enhanced
        # root to: "category_enhanced#index"
      end

      initializer "CategoryEnhanced.webpacker.assets_path" do
        Decidim.register_assets_path File.expand_path("app/packs", root)
      end
    end
  end
end
