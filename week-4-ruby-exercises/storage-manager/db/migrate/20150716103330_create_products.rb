class CreateProducts < ActiveRecord::Migration
    def change
        create_table :products do |table|
            table.string :name
            table.string :description
            table.decimal :price
        end
    end
end
