module Presenters

  class Twitter
    def initialize results
      @results = results
    end

    def render
      str = '<ul>'
      @results.each do |result|
        str += "<li> #{result.name} </li>"
      end
      str += '</ul>'
      str
    end

    def violate
      a = SearchTerm.new
    end
  end

end
