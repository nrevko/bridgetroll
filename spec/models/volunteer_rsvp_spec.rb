require 'spec_helper'

describe VolunteerRsvp do

  before(:each) do
    @user = Factory(:user)
    @event = Factory(:event)

    @volunteer_rsvp = @user.volunteer_rsvps.build(:event_id=>@event.id, :attending => "true")
  end

  it "should create a new instance given valid attributes" do
    @volunteer_rsvp.save!
  end

  it "should have a user" do
    @volunteer_rsvp.user.should == @user
  end

  it "should have an event" do
    @volunteer_rsvp.event.should == @event
  end

  it "should have an attending response" do
    @volunteer_rsvp.attending.should be_true
  end
end
