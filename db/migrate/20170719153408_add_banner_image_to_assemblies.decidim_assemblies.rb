# This migration comes from decidim_assemblies (originally 20161011141033)
# frozen_string_literal: true

class AddBannerImageToAssemblies < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_assemblies, :banner_image, :string
  end
end
