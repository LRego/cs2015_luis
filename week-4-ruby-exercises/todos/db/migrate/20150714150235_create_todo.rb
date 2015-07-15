class CreateTodo < ActiveRecord::Migration
    def change
        create_table :todos do |table|
            table.string :title
            table.boolean :complete, default: false, null: false
            table.timestamps
        end
    end
end
