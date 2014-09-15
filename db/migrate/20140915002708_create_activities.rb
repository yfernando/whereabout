class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :who, index: true
      t.string :what
    end
  end
end
