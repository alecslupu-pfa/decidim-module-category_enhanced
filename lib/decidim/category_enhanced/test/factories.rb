# frozen_string_literal: true

require "decidim/core/test/factories"

FactoryBot.define do
  factory :category_enhanced_component, parent: :component do
    name { Decidim::Components::Namer.new(participatory_space.organization.available_locales, :category_enhanced).i18n_name }
    manifest_name :category_enhanced
    participatory_space { create(:participatory_process, :with_steps) }
  end

  # Add engine factories here
end
