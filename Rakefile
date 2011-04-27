# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

HeadlinesToHeadlines::Application.load_tasks

desc "Load headlines"
task :load_headlines => :environment do
  require 'rss_importer'
  Headline.all.each { |h| h.destroy }
  Headline.feeds.each do |h|
    RssImporter.import(h)
  end
end

desc "Update scores"
task :user_score_update => :environment do
  User.all.each { |u| u.update_attribute(:score, 0) }
  Round.all.each do |r|
    if r.winner_id
      u = UserRound.find(r.winner_id).user
      if u
        u.score += 1
        u.save
      end
    end
  end
end
