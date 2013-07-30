module TweetsHelper
	def user_handle(tweet)
		tweet.user.handle
	end

	# def tweet_length(tweet)
	# tlength = tweet.content.length
	# return "This tweet has 1 character." if tlength == 1
	# "This tweet has #{tlength} characters."
end
