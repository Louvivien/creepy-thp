class SendTweet
	def perform
		log_in_to_twitter
		select_universities
		tweet_universities
		tweet_students
		tweet_entrepreneurs
	end

	def log_in_to_twitter
		@client = Twitter::REST::Client.new do |config|
  		config.consumer_key        = ENV['TWITTER_API_KEY']
  		config.consumer_secret     = ENV['TWITTER_API_SECRET']
  		config.access_token        = ENV['TWITTER_TOKEN']
  		config.access_token_secret = ENV['TWITTER_TOKEN_SECRET']
		end
	end

	def send_tweet(tweet)
		@client.update(tweet)
	end

	def select_universities
		@universities = []
		@criteria = ['universite','fac','faculte','univ']
		@criteria.each do |criteria|
			@client.user_search(criteria).each do |universite|
				@universities << universite.screen_name
			end
		end
		@universities
	end

	def tweet_universities
		select_universities
		@universities.each do |university|
			send_tweet("#{university}, vous connaissez The Hacking Project ? La seule formation de code gratuite pour vos étudiants. Pour la découvrir, c'est par ici : http://bit.ly/2EXYivy")
			sleep(30)
		end
	end

	def tweet_students
		@universities.each do |university|
			puts university
			@client.followers(university).each do |follower|
				puts follower.screen_name
				send_tweet("@#{follower.screen_name}, vous connaissez The Hacking Project ? La seule formation de code gratuite à combiner avec vos études. Pour la découvrir, c'est par ici : http://bit.ly/2GxzQOT")
				sleep(30)
			end
		end
	end

	def tweet_entrepreneurs
		@entrepreneurs = ['@PepiteFrance', '@joinstationf', '@_JoinLion', '@100000e', '@SPoEntrepreneur', '@BpifranceExcell', '@PartechShaker', '@pepiniere27']
		@entrepreneurs.each do |entrepreneur|
			@client.followers(entrepreneur).each do |follower|
				send_tweet("@#{follower.screen_name}, vous connaissez The Hacking Project ? La seule formation de code gratuite pour vous aider à monter votre boîte. Pour la découvrir, c'est par ici : http://bit.ly/2GDnm8a")
				sleep(30)
			end
		end
	end
end