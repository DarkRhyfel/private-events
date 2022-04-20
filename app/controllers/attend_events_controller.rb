# frozen_string_literal: true

# Attend events controller
class AttendEventsController < ApplicationController
  def create
    @event = Event.find(params[:event])
    @event.attendees.push(current_user)

    redirect_to @event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.attendees.destroy(current_user)

    redirect_to root_path
  end
end
