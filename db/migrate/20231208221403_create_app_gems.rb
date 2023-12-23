class CreateAppGems < ActiveRecord::Migration[7.1]
  def change
    create_table :app_gems do |t|
      t.string :name

      t.timestamps
    end
  end
end
