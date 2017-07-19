# This migration comes from decidim_assemblies (originally 20161110092735)
# frozen_string_literal: true

class AddIndexForAssemblySlugOrganization < ActiveRecord::Migration[5.0]
  def change
    add_index :decidim_assemblies,
              [:decidim_organization_id, :slug],
              unique: true,
              name: "index_unique_assembly_slug_and_organization"
  end
end
