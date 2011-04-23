require 'rss/1.0'
require 'rss/2.0'
require 'open-uri'

class RssImporter

  def self.import(source)
    #puts "Importing RSS for #{source.name}"
    # url = "http://feeds.nytimes.com/nyt/rss/HomePage"
    content = "" # raw content of rss feed will be loaded here
    open(source[:url]) do |s| content = s.read end
    rss = RSS::Parser.parse(content, false)
    # puts content.inspect

    created = 0

    rss.items.each do |item|
      next if Headline.exists?(:guid => item.guid.to_s)
      # puts item.date.inspect
      # puts item.date.class
      Headline.create(:guid => item.guid, :title => item.title, :url => item.link, :published_at => item.date.to_s, :body => item.description)
    end
  end

end

