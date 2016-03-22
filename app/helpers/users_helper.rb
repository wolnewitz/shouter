module UsersHelper
  def follow_button user
    if current_user.following? user
      button_to "Unfollow", user_follow_path(user), method: :delete, class: "unfollow-btn"
    else
      button_to "Follow", user_follow_path(user), class: "follow-btn"
    end
  end
end
