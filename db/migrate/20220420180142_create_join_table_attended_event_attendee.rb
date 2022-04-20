class CreateJoinTableAttendedEventAttendee < ActiveRecord::Migration[7.0]
  def change
    create_join_table :attended_events, :attendees do |t|
      t.index :attended_event_id
      t.index :attendee_id
    end
  end
end
