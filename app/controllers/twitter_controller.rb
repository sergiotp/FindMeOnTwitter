class TwitterController < ApplicationController
  def index

  end

  def search
    twitter = TwitterIntegration.new
    results = twitter.search(params['twitter_name'])
    @search_term = SearchTerm.create!(:user_name => params['twitter_name'])
    @search_results = Presenters::Twitter.new(results)
  end

  def pdf
    search_terms = SearchTerm.all
    pdf = PdfIntegration.new
    pdf.build_text search_terms
    send_data pdf.render, type: "application/pdf", disposition: "inline"
  end

  def break_architecture
    a = Twitter::REST::Client.new
  end
end
