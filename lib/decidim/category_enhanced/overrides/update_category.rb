# frozen_string_literal: true

module Decidim::CategoryEnhanced::Overrides::UpdateCategory
  def attributes
    super.merge(
      text_color: form.text_color,
      background_color: form.background_color
    )
  end
end
