require "spec_helper"

describe User do

  describe "volunteer rsvp" do
    before(:each) do
      @user = Factory(:user)
      @event = Factory(:event)
    end

    it "should have volunteer_rsvps method" do
      @user.should respond_to(:volunteer_rsvps)
    end

    it "should have volunteer! method" do
      @user.should respond_to(:volunteer!)
    end

    it "should have unvolunteer! method" do
      @user.should respond_to(:unvolunteer!)
    end

    it "should have volunteering? method" do
      @user.should respond_to(:volunteering?)
    end

    it "should have responded? method" do
      @user.should respond_to(:responded?)
    end

    it "should volunteer at the event" do
      @user.volunteer!(@event)
      @user.should be_responded(@event)
      @user.should be_volunteering(@event)
    end

    it "should include event in the events array" do
      @user.volunteer!(@event)
      @user.events.should include(@event)
    end

    it "should allow to not volunteer" do
      @user.volunteer!(@event)
      @user.unvolunteer!(@event)
      @user.should be_responded(@event)
      @user.should_not be_volunteering(@event)
    end

  end

end