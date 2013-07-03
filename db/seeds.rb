require 'faker'

10.times do |i|
  Event.create({
    :date => Date.today + i,
    :title => "Event #{i}",
    :name => "Organizer #{i}",
    :email => "organizer_#{i}@example.com" })
end
