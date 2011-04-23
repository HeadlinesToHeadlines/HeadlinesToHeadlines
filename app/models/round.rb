class Round < ActiveRecord::Base
  # has_many :plays
  # has_many :rss_feeds
  has_many :user_rounds

  has_one :winner, :class_name => "UserRound"
  has_one :judge, :class_name => "User"

  def self.adjectives
    [
      "Atrocious",
      "Awesome",
      "Bogus",
      "Boring",
      "Brainy",
      "Breaking",
      "Cheesy",
      "Chewy",
      "Creepy",
      "Dirty",
      "Douchey",
      "Elitist",
      "Explosive",
      "Feminist",
      "Foreign",
      "Funny",
      "Gnarly",
      "Heartless",
      "High-Falutin'",
      "Idiotic",
      "Inconsequential",
      "Moist",
      "Nauseating",
      "Out of This World",
      "Political",
      "Propaganda",
      "Relevant",
      "Saucy",
      "Scary",
      "Sexy",
      "Shiny",
      "Smooth",
      "Stereotyped",
      "Tasty",
      "Tawdry",
      "Technological",
      "That's What She Said",
      "Thought-Provoking",
      "Trustworthy",
      "Untrue",
      "Witty",
    ]
  end
end
