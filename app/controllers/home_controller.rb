class HomeController < ActionController::Base
  def index
    @blogs = APIS::Tumblr.new.accounts
  end

  def posts
    if params[:blog]
      @posts = APIS::Tumblr.new.posts params[:blog]
    else
      redirect_to :root
    end
  end
end