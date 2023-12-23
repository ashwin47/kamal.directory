class AddNotesToGemfiles < ActiveRecord::Migration[7.1]
  def change
    add_column :gemfiles, :notes, :text
  end
end
