class AddEventActivityRefToActivitySignups < ActiveRecord::Migration
  def change
    add_reference :activity_signups, :event_activity, index: true, foreign_key: true
  end
end
