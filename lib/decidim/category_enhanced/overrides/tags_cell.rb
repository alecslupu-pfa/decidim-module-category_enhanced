# frozen_string_literal: true

module Decidim::CategoryEnhanced::Overrides::TagsCell
  def link_to_category
    accessible_title = t("decidim.tags.filter_results_for_category", resource: category_name)

    link_to category_path, title: accessible_title, style: category_styles do
      sr_title = content_tag(
        :span,
        accessible_title,
        class: "show-for-sr"
      )
      display_title = content_tag(
        :span,
        category_name,
        "aria-hidden": true
      )

      sr_title + display_title
    end
  end

  def category_styles
    "color: #{model.category.text_color}; background-color: #{model.category.background_color};"
  end

end
