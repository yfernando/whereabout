class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :from
      t.string :to
    end
  end
end
