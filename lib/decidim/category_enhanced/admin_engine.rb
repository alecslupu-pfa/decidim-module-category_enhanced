# frozen_string_literal: true

module Decidim
  module CategoryEnhanced
    # This is the engine that runs on the public interface of `CategoryEnhanced`.
    class AdminEngine < ::Rails::Engine
      isolate_namespace Decidim::CategoryEnhanced::Admin

      paths["db/migrate"] = nil
      paths["lib/tasks"] = nil

      routes do
        # Add admin engine routes here
        # resources :category_enhanced do
        #   collection do
        #     resources :exports, only: [:create]
        #   end
        # end
        # root to: "category_enhanced#index"
      end

      def load_seed
        nil
      end
    end
  end
end
