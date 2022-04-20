# frozen_string_literal: true

# Event model
class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_and_belongs_to_many :attendees,
                          class_name: 'User', foreign_key: 'attended_event_id', association_foreign_key: 'attendee_id',
                          join_table: 'attended_events_attendees'

  def self.past
    where('date <= ?', Time.now)
  end

  def self.future
    where('date > ?', Time.now)
  end
end
