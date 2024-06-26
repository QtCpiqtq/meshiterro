class UsersController < ApplicationController
  def show
    @user = current_user
    @post_images = @user.post_images.page(params[:page])
  end

  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    @user.update(user_params)
    redirect_to user_path
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
