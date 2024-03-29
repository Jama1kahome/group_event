class UsersController < ApplicationController
  def profile
    @user_events = current_user.events
    @user = current_user
  end

  def my_friends
    @friendships =  current_user.friends
  end

  def search
    @users = User.search(params[:search_param])

    if @users
      @users = current_user.except_current_user(@users)
      render partial: 'friends/lookup'
    else
      render status: :not_found, nothing: true
    end
  end

  def add_friend
    @friend = User.find(params[:friend])
    current_user.friendships.build(friend_id: @friend.id)

    if current_user.save
      redirect_to my_friends_path, notice: 'Friend Added'
    else
      redirect_to my_friends_path, notice: 'Error'
    end
  end

end
