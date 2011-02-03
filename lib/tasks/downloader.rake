namespace :fb do
  task :download do
    require 'facebooker'
    Facebooker.new.download
  end

  task :save => :environment do
    require 'facebooker'
    Facebooker.new.save_to_db
  end
end

namespace :data do
  task :download => :environment do
    require 'downloader'
    Downloader.new.download
  end

  task :update do
    require 'downloader'
    Downloader.new.update_from_facebook
  end

  task :clear => :environment do
    CampaignResult.delete_all
  end
end
