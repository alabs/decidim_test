# This migration comes from decidim_assemblies (originally 20170221094835)
# frozen_string_literal: true

class AddScopesToAssemblies < ActiveRecord::Migration[5.0]
  def change
    rename_column :decidim_assemblies, :scope, :meta_scope
    add_column :decidim_assemblies, :decidim_scope_id, :integer
  end
end
