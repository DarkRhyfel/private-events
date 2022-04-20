# frozen_string_literal: true

# Attend events controller
class AttendEventsController < ApplicationController
  def create
    @event = Event.find(params[:event])

    @event.attendees.push(current_user)

    redirect_to @event
  end
end
