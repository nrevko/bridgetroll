Factory.define :user do |f|
  f.sequence(:email) { |n| "example0#{n}@example.com"}
  f.password "test123"
end

Factory.define :event do |f|
  f.title "Meetup"
end

Factory.define :volunteer_rsvp do |f|
end