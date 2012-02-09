class SkillsController < ApplicationController
  before_filter :authenticate_user!

  def edit
    @user = current_user
    puts "INVESTIGTING user = #{@user.inspect}"
  end

  def update
    @user = current_user

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to :root, notice: "Thanks for adding your skills"}
        format.json { head :ok }
      else
        format.html { render action: "edit" }
      end
    end
  end

end