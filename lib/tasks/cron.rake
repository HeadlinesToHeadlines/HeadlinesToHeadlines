desc "Cron jobs"
task :cron => :environment do
  Rake::Task[:load_headlines].execute
end

