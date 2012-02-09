class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable, :lockable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :skill_teaching, :skill_taing, :skill_coordinating, :skill_childcaring,
                  :skill_writing, :skill_hacking, :skill_designing, :skill_mac_os, :skill_linux,
                  :skill_evangelizing, :skill_mentoring, :skill_other, :skill_windows
end
