ActiveAdmin.register Event do
  show do
    h3 event.name
    div event.starttime
    div event.event_date
  end
  form do |f|
    f.inputs "Event" do
      f.input :product
      f.input :name
      f.input :event_date, as: :date_picker
      f.input :starttime, as: :just_time_picker
      f.input :endtime
    end
    f.actions
  end
end
