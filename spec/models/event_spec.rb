require "spec_helper"

describe Event do

  describe "volunteer rsvp" do
    before(:each) do
      @user = Factory(:user)
      @event = Factory(:event)
    end

    it "should have volunteer_rsvps method" do
      @event.should respond_to(:volunteer_rsvps)
    end

    it "should have list of rsvp-ed events" do
      rsvp = Factory(:volunteer_rsvp, :user_id=>@user.id, :event_id=>@event.id)
      rsvp.save

      @event.users.should include(@user)
    end

  end

end