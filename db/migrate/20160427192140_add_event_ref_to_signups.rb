class AddEventRefToSignups < ActiveRecord::Migration
  def change
    add_reference :signups, :event, index: true, foreign_key: true
  end
end
