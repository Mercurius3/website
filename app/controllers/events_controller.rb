class EventsController < ApplicationController
  def index
    @events = Event.all(order: :datetime)
  end
end