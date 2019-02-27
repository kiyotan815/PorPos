class ApplicationController < ActionController::Base
  def authenticate_github_user!
    unless user_signed_in?
      flash[:notice] = "githubログインをしてください"
      return redirect_to root_path
    end
  end
end
