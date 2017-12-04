class PagesController < ApplicationController
  def home

   	url = "https://www.thrillist.com/entertainment/miami/free-things-to-do-in-miami"


   	page = HTTParty.get(url)
    dom = Nokogiri::HTML(page)

    @item = dom.css(".body-text__content")

    # titles = dom.css(".body-text__content").css('h2')
    # links = dom.css(".body-text__content a")

    # @h = Hash[titles.zip links]

    # url2 = "http://www.10best.com/destinations/florida/miami/attractions/free-things-to-do/"

    # page2 = HTTParty.get(url2)
    # dom2 = Nokogiri::HTML(page2)

    # @titles2 = dom2.css(".list-headline h2")



 	end

  def events
    
  end

    

    

  # end
end
