class AddContactRefToSignups < ActiveRecord::Migration
  def change
    add_reference :signups, :contact, index: true, foreign_key: true
  end
end
