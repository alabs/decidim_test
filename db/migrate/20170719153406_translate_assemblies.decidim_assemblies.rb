# This migration comes from decidim_assemblies (originally 20161010102356)
# frozen_string_literal: true

class TranslateAssemblies < ActiveRecord::Migration[5.0]
  def change
    remove_column :decidim_assemblies, :title
    remove_column :decidim_assemblies, :subtitle
    remove_column :decidim_assemblies, :description
    remove_column :decidim_assemblies, :short_description

    change_table :decidim_assemblies do |t|
      t.jsonb :title, null: false
      t.jsonb :subtitle, null: false
      t.jsonb :short_description, null: false
      t.jsonb :description, null: false
    end
  end
end
