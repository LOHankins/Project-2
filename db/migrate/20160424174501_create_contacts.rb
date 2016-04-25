class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :title
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :cell_phone
      t.string :home_phone
      t.string :email
      t.string :twitter
      t.string :instagram
      t.boolean :hide_pii

      t.timestamps null: false
    end
  end
end
