class CreateCategory < ActiveRecord::Migration
    def change
        create_table :category do |table|
            table.string :name
        end
        add_column :products, :category_id, :integer
    end
end

# categories
