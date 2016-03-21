class FollowingRelationshipsController < ApplicationController
  def create
    current_user.follow user
    flash[:notice] = "You are now following #{user.username}"
    redirect_to user
  end

  def destroy
    current_user.unfollow user
    flash[:notice] = "You are no longer following #{user.username}"
    redirect_to user
  end

  private
  
  def user
    @_user = User.find(params[:user_id])
  end
end
