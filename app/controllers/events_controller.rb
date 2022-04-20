# frozen_string_literal: true

# Events controller
class EventsController < ApplicationController
  def index
    @events = Event.all

    @events = @events.where('creator_id != ?', current_user.id) if user_signed_in?
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)

    if @event.save
      redirect_to @event
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :date)
  end
end
