class ScraperService

  def initialize(url)
    page = HTTParty.get(url)
    @dom = Nokogiri::HTML(page)
  end
  
  def get_dom
    return @dom.css(".body-text__content")
  end

  # def get_ftld
  #   return 
  # end
end
