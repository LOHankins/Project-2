class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.integer :amount_paid

      t.timestamps null: false
    end
  end
end
