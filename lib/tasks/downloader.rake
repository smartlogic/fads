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
