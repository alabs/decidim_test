# This migration comes from decidim_assemblies (originally 20161005130108)
# frozen_string_literal: true

class AddAssemblies < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_assemblies do |t|
      t.string :title, null: false
      t.string :slug, null: false, unique: true
      t.string :hashtag, unique: true
      t.string :subtitle, null: false
      t.text :short_description, null: false
      t.text :description, null: false
      t.references :decidim_organization,
                   foreign_key: true,
                   index: { name: "index_decidim_assemblies_on_decidim_organization_id" }

      t.timestamps
    end
  end
end
