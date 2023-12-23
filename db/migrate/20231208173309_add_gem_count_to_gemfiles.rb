class AddGemCountToGemfiles < ActiveRecord::Migration[7.1]
  def change
    add_column :gemfiles, :gem_count, :integer
  end
end
