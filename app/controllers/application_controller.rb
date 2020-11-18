class ApplicationController < ActionController::Base
    
    include SessionsHelper
    
    private
    def require_user_logged_in
      unless logged_in?
        redirect_to login_url
      end
    end
    
    def counts(user)#引数にuser
      @count_microposts = user.microposts.count
      @count_followings = user.followings.count
      @count_followers = user.followers.count
      @count_favorites = user.fav_microposts.count #userがお気に入りしたpost(fav_micropost)をカウント
    end
end
