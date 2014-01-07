class SecretsController < ApplicationController
  def new
    @user = User.find(params[:user_id])

    render :new
  end

  def create
    @secret = current_user.authored_secrets.new(params[:secrets])
    if @secret.save
      render :json => @secret
    else
      render :text => "something is wrong!"
    end
  end
end
