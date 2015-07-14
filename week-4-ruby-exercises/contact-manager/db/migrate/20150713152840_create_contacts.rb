class CreateContacts < ActiveRecord::Migration
    def change
        create_table :contacts do |table|
            table.string :first_name
            table.string :last_name
            table.string :email
            table.string :phone_number
            table.string :address
        end
    end
end
