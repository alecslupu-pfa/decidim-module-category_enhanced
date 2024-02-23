# frozen_string_literal: true

require "decidim/category_enhanced/admin"
require "decidim/category_enhanced/engine"
require "decidim/category_enhanced/admin_engine"

module Decidim
  # This namespace holds the logic of the `CategoryEnhanced` component. This component
  # allows users to create category_enhanced in a participatory space.
  module CategoryEnhanced

    module Overrides
      autoload :CategoryForm, "decidim/category_enhanced/overrides/category_form"
      autoload :CreateCategory, "decidim/category_enhanced/overrides/create_category"
      autoload :UpdateCategory, "decidim/category_enhanced/overrides/update_category"
      autoload :TagsCell, "decidim/category_enhanced/overrides/tags_cell"
    end

    include ActiveSupport::Configurable

    config_accessor :deface_enabled do
      ENV.fetch("DEFACE_ENABLED", nil) == "true" || Rails.env.test?
    end

    config_accessor :coloured_labels do
      false
    end
  end
end
