module PagesHelper

  def parse_title(item)
    (item.at_css('h2').text.squish).delete('^a-zA-Z ')
  end

  def parse_ftld(item)
    item.at_css('.slide-title').text.sub(/»/, '')
  end

end
