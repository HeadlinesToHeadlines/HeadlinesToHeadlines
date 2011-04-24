# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

HeadlinesToHeadlines::Application.load_tasks

desc "Load headlines"
task :load_headlines => :environment do
  require 'rss_importer'
  Headline.feeds.each do |h|
    RssImporter.import(h)
  end
end
