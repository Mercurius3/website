class Event < ActiveRecord::Base
  include Icalendar

  attr_accessible :event_date, :starttime, :endtime, :name, :product_id

  just_define_time_picker :starttime, :add_to_attr_accessible => true
  validates_presence_of :name

  belongs_to :product

  # Convert to iCalendar
  def to_ics
    event = Icalendar::Event.new
    event.start = self.datetime.strftime("%Y%m%dT%H%M%S")
    event.end = (self.datetime + self.duration).strftime("%Y%m%dT%H%M%S")
    event.summary = self.name
    event.location = self.product.location
    event.klass = "PUBLIC"
    event.created = self.created_at
    event.last_modified = self.updated_at
    event.uid = event.url = "#{Rails.root}events/#{self.id}"
    event
  end
end
