class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :msg
      t.string :shoot_type
      t.string :date_of_event
      t.string :event_times

      t.timestamps
    end
  end
end
