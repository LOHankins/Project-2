class CreateActivitySignups < ActiveRecord::Migration
  def change
    create_table :activity_signups do |t|

      t.timestamps null: false
    end
  end
end
