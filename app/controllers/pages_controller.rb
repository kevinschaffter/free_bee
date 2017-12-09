class PagesController < ApplicationController
  layout :resolve_layout
  before_action :authenticate_user!, except: [:home]

  def index
  end

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

  private

  def resolve_layout
    case action_name
    when "home"
      "application"
    when "miami", "fort_lauderdale"
      "events_layout"
    else
      "events_layout"
    end
  end
  
end
