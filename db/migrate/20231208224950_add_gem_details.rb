class AddGemDetails < ActiveRecord::Migration[7.1]
  def change
    add_column :app_gems, :details, :jsonb, default: {}
  end
end
