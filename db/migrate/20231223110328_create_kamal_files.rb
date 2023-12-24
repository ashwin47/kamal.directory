class CreateKamalFiles < ActiveRecord::Migration[7.1]
  def change
    create_table :kamalfiles do |t|
      t.integer :user_id
      t.text :content
      t.string :name
      t.string :app_link
      t.string :github_link
      t.integer :accessories_count
      t.text :notes

      t.timestamps
    end
  end
end
