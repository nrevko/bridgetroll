class VolunteerRsvpsController < ApplicationController

  def create
    @event = Event.find(params[:volunteer_rsvp][:event_id])
    current_user.volunteer!(@event)
    respond_to do |format|
      format.html {redirect_to events_url}
      format.js
    end
  end

  def update
    #@rsvp = VolunteerRsvp.find(params[:id])
    @event = Event.find(params[:event_id])
    @rsvp = VolunteerRsvp.find_by_user_id_and_event_id(current_user.id, @event.id)

    respond_to do |format|
      if @rsvp.attending?
        current_user.unvolunteer!(@event)
      else
        current_user.volunteer!(@event)
      end
      format.html {redirect_to @event, :notice=>"Your response was updated!"}
      format.js
    end
  end
end