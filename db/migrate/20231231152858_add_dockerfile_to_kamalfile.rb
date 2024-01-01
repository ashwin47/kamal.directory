class AddDockerfileToKamalfile < ActiveRecord::Migration[7.1]
  def change
    add_column :kamalfiles, :dockerfile, :text
    add_column :kamalfiles, :env, :text
  end
end
