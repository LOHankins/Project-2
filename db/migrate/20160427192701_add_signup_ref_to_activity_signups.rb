class AddSignupRefToActivitySignups < ActiveRecord::Migration
  def change
    add_reference :activity_signups, :signup, index: true, foreign_key: true
  end
end
