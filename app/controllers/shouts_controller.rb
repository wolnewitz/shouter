class ShoutsController < ApplicationController
  def show
    @shout = Shout.find(params[:id])
  end

  def create
    shout = current_user.shouts.new(content: @content) 
    if shout.save
      flash[:alert] = "Shout created"
      redirect_to dashboard_path
    else
      flash[:alert] = "Could not shout"
      redirect_to dashboard_path
    end
  end

  private
  
  def shout_params
    params.require(:shout).permit(:body)
  end
end
