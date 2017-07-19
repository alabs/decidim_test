# This migration comes from decidim_assemblies (originally 20170126151123)
# frozen_string_literal: true

class AddExtraInfoToAssemblies < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_assemblies, :domain, :jsonb
    add_column :decidim_assemblies, :end_date, :date
    add_column :decidim_assemblies, :developer_group, :string
    add_column :decidim_assemblies, :scope, :jsonb
  end
end
