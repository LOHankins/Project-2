class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column(:event_activities, :start_time, :text)
  	change_column(:event_activities, :end_time, :text)
  end
end
