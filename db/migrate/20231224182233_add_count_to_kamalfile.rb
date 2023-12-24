class AddCountToKamalfile < ActiveRecord::Migration[7.1]
  def change
    add_column :kamalfiles, :server_count, :integer
    add_column :kamalfiles, :accessory_count, :integer
  end
end
