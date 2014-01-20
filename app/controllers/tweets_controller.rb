class TweetsController < ApplicationController
	def create
		tweet = Tweet.new(params[:tweet])
		tweet.user_id = current_user.id
 
		flash[:error] = "Your Tweet was over 140 characters" unless tweet.save
		redirect_to current_user
		 
	end
end
