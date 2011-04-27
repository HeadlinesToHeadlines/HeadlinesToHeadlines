class Headline < ActiveRecord::Base

  belongs_to :user_round

  def self.feeds
    [
      { 
      :name => 'New York Times',
      :url => 'http://www.nytimes.com/services/xml/rss/nyt/HomePage.xml'
    },
      {
      :name => 'Perez Hilton',
      :url => 'http://img.perezhilton.com/?feed=rss2'
    },
      {
      :name => 'ESPN',
      :url => 'http://sports-ak.espn.go.com/espn/rss/news'
    },
      {
      :name => 'New York Daily News',
      :url => 'http://www.nydailynews.com/news/index_rss.xml'
    },
      {
      :name => 'Mashable',
      :url => 'http://feeds.mashable.com/mashable'
    },
      {
      :name => 'Al-Jazeera English',
      :url => 'http://english.aljazeera.net/Services/Rss/?PostingId=2007731105943979989'
    },
      {
      :name => 'New Yorker',
      :url => 'http://www.newyorker.com/services/rss/feeds/everything.xml'
    },
      {
      :name => 'Forbes',
      :url => 'http://www.forbes.com/news/index.xml'
    },
      {
      :name => 'Hipster Runoff',
      :url => 'http://www.hipsterrunoff.com/feed'
    },
      {
      :name => 'National Enquirer',
      :url => 'http://www.nationalenquirer.com/rss.xml'
    }
    ]
  end
end
