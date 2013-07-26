class TweetsController < ApplicationController
  
  before_action :check_user_login

  def index
    @tweets = Tweet.all
    # tweet pluralized refers to all tweets in the db
    # capital Tweet refers to the model
  end

  def show
    @tweet = Tweet.find(params[:id])
    # params is referring to the URL
    # id here will be used in the URL (user 1, 2, etc.)
  end

  # def edit
  # end

  # def update
  # end

  # removing edit + update because those aren't functions on Twitter
  # must simulataneously except them from the routes.rb file

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user = @current_user
    @tweet.save
    redirect_to tweets_path
  end

  def destroy
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content)
  end

  def check_user_login
    @current_user = User.find(session[:user_id])
  end

end
