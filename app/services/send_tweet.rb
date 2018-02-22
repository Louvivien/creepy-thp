class SendTweet
	#def initialize(tweet)
	#	@tweet = tweet
	#end

	def perform
		log_in_to_twitter
		#tweet_universities
		#tweet_students
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

	def tweet_universities
		@universities = ["@USPC_news", "@SorbonneParis1", "@UnivParisSaclay", "@UPECactus", "@univamu", "@univpaulvalery", "@AssasParis2", "@CPUniversite", "@univ_paris13", "@SorbonneParis3", "@UParisDescartes", "@UnivParis8", "@ParisDiderot", "@UQAM", "@UParisNanterre"‏, "@Paris_Dauphine", "@UnivNantes", "@unilim", "@UBO_UnivBrest", "@UnivLaRochelle", "@UnivCorse", "@Univ_Lorraine", "@Univ_St_Etienne", "@upemlv", "@UnivLyon1", "@univ_lyon2", "@UniversiteLyon", "@UnivRennes_2", "@ucly", "@UnivEvry", "@universitereims"‏, "@ScienceSorbonne", "@univpaulvalery", "@FacLibredeDroit‏", "@Universite_Caen‏"‏‏‏]
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
end