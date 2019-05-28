class ProfilPicturesController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @user.profil_picture.attach(params[:profil_picture])
    redirect_to(user_path(@user))
  end

end