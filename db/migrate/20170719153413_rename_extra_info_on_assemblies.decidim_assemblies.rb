# This migration comes from decidim_assemblies (originally 20170206083118)
# frozen_string_literal: true

class RenameExtraInfoOnAssemblies < ActiveRecord::Migration[5.0]
  def change
    remove_column :decidim_assemblies, :developer_group

    rename_column :decidim_assemblies, :domain, :developer_group

    add_column :decidim_assemblies, :local_area, :jsonb
    add_column :decidim_assemblies, :target, :jsonb
    add_column :decidim_assemblies, :participatory_scope, :jsonb
    add_column :decidim_assemblies, :participatory_structure, :jsonb
  end
end
