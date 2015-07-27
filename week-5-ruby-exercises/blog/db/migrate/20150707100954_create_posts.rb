class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |table|
      table.string :title, null: false
      table.text :body
      table.timestamps
    end
  end
end
