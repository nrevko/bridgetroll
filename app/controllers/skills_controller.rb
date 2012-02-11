class SkillsController < ApplicationController
  before_filter :authenticate_user!

  def edit
    @user = current_user
  end

  def update
    @user = User.find(current_user.id)

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