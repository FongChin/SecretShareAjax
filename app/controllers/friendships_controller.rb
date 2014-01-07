class FriendshipsController < ApplicationController

  def create
    @friendship = Friendship.new({:in_friend_id => params[:user_id],
                                  :out_friend_id => current_user.id})
    @friendship.save!

    redirect_to users_url
  end

  def destroy
    @friendship = current_user.in_friendships.where(:in_friend_id => params[:user_id]).first
    @friendship.destroy

    head 200
  end

end
