class Product < ActiveRecord::Base
  attr_accessible :active, :content, :location, :name, :position, :price, :teacher, :subscriptions_attributes, :events_attributes, :category_id

  validates_uniqueness_of :position
  validates_presence_of :name, :content, :category_id

  acts_as_list

  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_many :events
  belongs_to :category
  accepts_nested_attributes_for :events, :reject_if => :all_blank, :allow_destroy => true

  require 'icalendar'
  include Icalendar

  def to_ics
    cal = Calendar.new
    cal.custom_property("X-WR-CALNAME;VALUE=TEXT", self.name)
    cal.prodid "-//#{self.name}//EN"
    self.events.each do |e|
      cal.event do
        uid "#{e.id}@www.lassche-lassche.nl"
        sequence DateTime.now.to_i
        dtstart e.datetime.strftime("%Y%m%dT%H%M%SZ")
        dtend (e.datetime + e.duration).strftime("%Y%m%dT%H%M%SZ")
        summary "#{e.name}"
      end
    end
    cal.to_ical
  end
end
