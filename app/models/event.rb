# frozen_string_literal: true

# Event model
class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
end
