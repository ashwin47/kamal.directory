class CreateGemfileAppGems < ActiveRecord::Migration[7.1]
  def change
    create_table :gemfile_app_gems do |t|
      t.references :gemfile, null: false, foreign_key: true
      t.references :app_gem, null: false, foreign_key: true

      t.timestamps
    end
  end
end
