class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable, :lockable, :timeoutable
  has_many :volunteerRsvps
  has_many :events, :through => :volunteerRsvps

 # validate :name, :unique => true

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation,
                  :remember_me, :teaching, :taing, :coordinating,
                  :childcaring, :writing, :hacking, :designing,
                  :evangelizing, :mentoring, :macosx, :windows,
                  :linux, :other, :name
end
