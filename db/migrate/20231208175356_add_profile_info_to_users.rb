class AddProfileInfoToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :github_username, :string
    add_column :users, :x_username, :string
  end
end
