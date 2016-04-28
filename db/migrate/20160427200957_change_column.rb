class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column(:Event_Activity, :start_time, :text)
  	change_column(:Event_Activity, :end_time, :text)
  end
end
