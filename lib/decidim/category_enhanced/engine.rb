# frozen_string_literal: true

require "deface"
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


      initializer "category_enhanced.views" do
        Rails.application.configure do
          config.deface.enabled = Decidim::CategoryEnhanced.deface_enabled
        end
      end

      initializer "category_enhanced.overrides", after: "decidim.action_controller" do
        config.to_prepare do
          ActiveSupport.on_load :action_controller do
            Decidim::Admin::CategoryForm.include Decidim::CategoryEnhanced::Overrides::CategoryForm
            Decidim::Admin::CreateCategory.prepend Decidim::CategoryEnhanced::Overrides::CreateCategory
            Decidim::Admin::UpdateCategory.prepend Decidim::CategoryEnhanced::Overrides::UpdateCategory

            if Decidim::CategoryEnhanced.coloured_labels
              Decidim::TagsCell.prepend Decidim::CategoryEnhanced::Overrides::TagsCell
            end
          end
        end
      end

      initializer "category_enhanced.webpacker.assets_path" do
        Decidim.register_assets_path File.expand_path("app/packs", root)
      end
    end
  end
end
