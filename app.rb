require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
	:database => 'chicago_recommendations', 
	:adapter => 'postgresql'
)

get '/' do
	return "hi"
end

get '/api' do
	Recommendation.all.to_json
end