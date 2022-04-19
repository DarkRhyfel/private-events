# frozen_string_literal: true

# Events controller
class EventsController < ApplicationController
  def index
    @events = Event.all
  end
end
