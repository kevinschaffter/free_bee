class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
  end

  def miami
    @item = ScraperService.new('https://www.thrillist.com/entertainment/miami/free-things-to-do-in-miami').get_dom
  end

  def fort_lauderdale
    url = 'http://vacationidea.com/destinations/best-things-to-do-in-fort-lauderdale-fl.html'
    page = HTTParty.get(url)
    dom = Nokogiri::HTML(page)
    @item = dom.css(".slideshow")
  end
  
end
