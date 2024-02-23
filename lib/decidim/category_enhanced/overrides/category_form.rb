# frozen_string_literal: true

module Decidim::CategoryEnhanced::Overrides::CategoryForm
  extend ActiveSupport::Concern

  included do
    attribute :text_color, String
    attribute :background_color, String

    validates :text_color, format: { with: /\A#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})\z/ }
    validates :background_color, format: { with: /\A#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})\z/ }
  end
end
