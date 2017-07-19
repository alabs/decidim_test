# This migration comes from decidim_assemblies (originally 20161013134732)
# frozen_string_literal: true

class AddPromotedFlagToAssemblies < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_assemblies, :promoted, :boolean, default: false, index: true
  end
end
