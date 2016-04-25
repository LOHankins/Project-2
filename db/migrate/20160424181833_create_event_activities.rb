class CreateEventActivities < ActiveRecord::Migration
  def change
    create_table :event_activities do |t|
      t.string :title
      t.text :description
      t.date :start_time
      t.date :end_time
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
