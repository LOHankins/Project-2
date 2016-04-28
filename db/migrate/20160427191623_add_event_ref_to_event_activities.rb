class AddEventRefToEventActivities < ActiveRecord::Migration
  def change
    add_reference :event_activities, :event, index: true, foreign_key: true
  end
end
