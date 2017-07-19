# This migration comes from decidim_assemblies (originally 20161011125616)
# frozen_string_literal: true

class AddHeroImageToAssemblies < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_assemblies, :hero_image, :string
  end
end
