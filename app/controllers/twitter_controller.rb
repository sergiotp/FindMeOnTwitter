class TwitterController < ApplicationController
  def index
    
  end
  
  def search
    twitter = TwitterIntegration.new
    @search_results = twitter.search(params['twitter_name'])
    @search_term = SearchTerm.create!(:user_name => params['twitter_name'])
    
  end
end