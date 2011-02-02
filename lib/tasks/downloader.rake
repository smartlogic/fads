namespace :data do
  task :download => :environment do
    require 'downloader'
    Downloader.download
  end

  task :clear => :environment do
    CampaignResult.delete_all
  end
end
