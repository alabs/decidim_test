# This migration comes from decidim_assemblies (originally 20161025125300)
# frozen_string_literal: true

class AddPublishedAtToAssemblies < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_assemblies, :published_at, :datetime, index: true
  end
end
