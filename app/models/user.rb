class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable, :lockable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :volunteer_rsvps
  has_many :events, :through => :volunteer_rsvps

  def responded?(event)
    volunteer_rsvps.find_by_event_id(event.id)
  end

  def volunteering?(event)
    volunteer_rsvps.find_by_event_id(event.id).attending?
  end

  def volunteer!(event)
    if volunteer_rsvps.find_by_event_id(event.id)
      volunteer_rsvps.find_by_event_id(event.id).update_attribute(:attending, "true")
    else
      volunteer_rsvps.create!(:event_id=>event.id, :attending=>"true")
    end
  end

  def unvolunteer!(event)
    volunteer_rsvps.find_by_event_id(event.id).update_attribute(:attending, "false")
  end
end
