module EventsHelper
  def calendar_builder(events)
    build_calendar(group_events_per_month(events))
  end

  def event_calendar_item(event)
    raw("#{l event.starttime, format: :time} - #{l event.endtime, format: :short} #{link_to event.product.name, event.product}: #{event.name}")
  end

  def group_events_per_month(events)
    events_per_month = []
    hash = events.group_by { |f| f.event_date.beginning_of_month }
    hash.each { |key, value| events_per_month << value }
    events_per_month
  end

  def build_calendar(months)
    calendar = ""
    months.each do |events|
      # Add month header to calendar
      calendar << "<h2>#{t('date.month_names')[events.first.event_date.month].capitalize}</h2>"
      # Each month has many events
      events.each do |event|
        calendar << "#{event_calendar_item(event)}<br />"
      end
      calendar << "<br />"
    end
    sanitize calendar
  end
end
