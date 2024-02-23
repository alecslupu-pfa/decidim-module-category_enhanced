# frozen_string_literal: true

module Decidim::CategoryEnhanced::Overrides::CreateCategory
    def create_category
      Decidim.traceability.create!(
        Category,
        @user,
        name: form.name,
        weight: form.weight,
        parent_id: form.parent_id,
        participatory_space: @participatory_space,
        text_color: form.text_color,
        background_color: form.background_color
      )
    end
end
