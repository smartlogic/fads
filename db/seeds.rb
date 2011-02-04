# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

if Rails.env.development?
  agency = Agency.create!(:name => 'Euro')
  User.create!(:agency => agency, :email => 'user@slsdev.net', :password => 'useruser')

  spotcrime = Client.create!(:name => 'Spotcrime', :agency => agency)
  campaign  = spotcrime.campaigns.create!(:name => 'First Test')

  mt21 = campaign.facebook_campaigns.create!(:name => 'mt21', :image => '02.png', 
    :copy => 'v1', :gender => 'M', :likes_law_and_order => true, 
    :value_per_conversion => 1.00, :population => 16460, :bid => 0.87)

  mt22 = campaign.facebook_campaigns.create!(:name => 'mt22', :image => '02.png', 
    :copy => 'v2', :gender => 'M', :likes_law_and_order => true, 
    :value_per_conversion => 1.00, :population => 16460, :bid => 0.87)

  mt51 = campaign.facebook_campaigns.create!(:name => 'mt51', :image => '05.png', 
    :copy => 'v1', :gender => 'M', :likes_law_and_order => true,
    :value_per_conversion => 1.00, :population => 16460, :bid => 0.87)

  mt52 = campaign.facebook_campaigns.create!(:name => 'mt52', :image => '05.png', 
    :copy => 'v2', :gender => 'M', :likes_law_and_order => true, 
    :value_per_conversion => 1.00, :population => 16460, :bid => 0.87)

  mf21 = campaign.facebook_campaigns.create!(:name => 'mf21', :image => '02.png', 
    :copy => 'v1', :gender => 'M', :likes_law_and_order => false, 
    :value_per_conversion => 1.00, :population => 3153980, :bid => 0.51)

  mf22 = campaign.facebook_campaigns.create!(:name => 'mf22', :image => '02.png', 
    :copy => 'v2', :gender => 'M', :likes_law_and_order => false, 
    :value_per_conversion => 1.00, :population => 3153980, :bid => 0.57)

  mf51 = campaign.facebook_campaigns.create!(:name => 'mf51', :image => '05.png', 
    :copy => 'v1', :gender => 'M', :likes_law_and_order => false, 
    :value_per_conversion => 1.00, :population => 3153980, :bid => 0.54)

  mf52 = campaign.facebook_campaigns.create!(:name => 'mf52', :image => '05.png', 
    :copy => 'v2', :gender => 'M', :likes_law_and_order => false, 
    :value_per_conversion => 1.00, :population => 3153980, :bid => 0.55)

  ft21 = campaign.facebook_campaigns.create!(:name => 'ft21', :image => '02.png', 
    :copy => 'v1', :gender => 'F', :likes_law_and_order => true, 
    :value_per_conversion => 1.00, :population => 45780, :bid => 0.86)

  ft22 = campaign.facebook_campaigns.create!(:name => 'ft22', :image => '02.png', 
    :copy => 'v2', :gender => 'F', :likes_law_and_order => true, 
    :value_per_conversion => 1.00, :population => 45780, :bid => 0.79)

  ft51 = campaign.facebook_campaigns.create!(:name => 'ft51', :image => '05.png', 
    :copy => 'v1', :gender => 'F', :likes_law_and_order => true, 
    :value_per_conversion => 1.00, :population => 45780, :bid => 0.81)

  ft52 = campaign.facebook_campaigns.create!(:name => 'ft52', :image => '05.png', 
    :copy => 'v2', :gender => 'F', :likes_law_and_order => true, 
    :value_per_conversion => 1.00, :population => 45780, :bid => 0.82)

  ff21 = campaign.facebook_campaigns.create!(:name => 'ff21', :image => '02.png', 
    :copy => 'v1', :gender => 'F', :likes_law_and_order => false, 
    :value_per_conversion => 1.00, :population => 3659600, :bid => 0.62)

  ff22 = campaign.facebook_campaigns.create!(:name => 'ff22', :image => '02.png', 
    :copy => 'v2', :gender => 'F', :likes_law_and_order => false, 
    :value_per_conversion => 1.00, :population => 3659600, :bid => 0.61)

  ff51 = campaign.facebook_campaigns.create!(:name => 'ff51', :image => '05.png', 
    :copy => 'v1', :gender => 'F', :likes_law_and_order => false, 
    :value_per_conversion => 1.00, :population => 3659600, :bid => 0.62)

  ff52 = campaign.facebook_campaigns.create!(:name => 'ff52', :image => '05.png', 
    :copy => 'v2', :gender => 'F', :likes_law_and_order => false, 
    :value_per_conversion => 1.00, :population => 3659600, :bid => 0.59)

  
  snapshot = campaign.campaign_snapshots.create!(:timestamp => Time.new(2011, 2, 2, 18, 45))
  snapshot.campaign_results.create!(:facebook_campaign => mt21, :spend => 2.65, :impressions => 15155, :clicks => 4)
  snapshot.campaign_results.create!(:facebook_campaign => mt22, :spend => 2.65, :impressions => 15550, :clicks => 7)
  snapshot.campaign_results.create!(:facebook_campaign => mt51, :spend => 2.65, :impressions => 15097, :clicks => 6)
  snapshot.campaign_results.create!(:facebook_campaign => mt52, :spend => 2.65, :impressions => 13248, :clicks => 1)
  snapshot.campaign_results.create!(:facebook_campaign => mf21, :spend => 2.71, :impressions => 26834, :clicks => 3)
  snapshot.campaign_results.create!(:facebook_campaign => mf22, :spend => 2.71, :impressions => 19832, :clicks => 2)
  snapshot.campaign_results.create!(:facebook_campaign => mf51, :spend => 2.74, :impressions => 23483, :clicks => 3)
  snapshot.campaign_results.create!(:facebook_campaign => mf52, :spend => 3.98, :impressions => 32580, :clicks => 8)
  snapshot.campaign_results.create!(:facebook_campaign => ft21, :spend => 2.74, :impressions => 24497, :clicks => 8)
  snapshot.campaign_results.create!(:facebook_campaign => ft22, :spend => 2.70, :impressions => 21335, :clicks => 6)
  snapshot.campaign_results.create!(:facebook_campaign => ft51, :spend => 2.69, :impressions => 21574, :clicks => 3)
  snapshot.campaign_results.create!(:facebook_campaign => ft52, :spend => 2.70, :impressions => 23974, :clicks => 4)
  snapshot.campaign_results.create!(:facebook_campaign => ff21, :spend => 2.85, :impressions => 16546, :clicks => 4)
  snapshot.campaign_results.create!(:facebook_campaign => ff22, :spend => 2.81, :impressions => 16516, :clicks => 5)
  snapshot.campaign_results.create!(:facebook_campaign => ff51, :spend => 2.82, :impressions => 16383, :clicks => 5)
  snapshot.campaign_results.create!(:facebook_campaign => ff52, :spend => 4.73, :impressions => 37707, :clicks => 5)

  snapshot = campaign.campaign_snapshots.create!(:timestamp => Time.new(2011, 2, 3, 9, 42))
  snapshot.campaign_results.create!(:facebook_campaign => mt21, :spend => 7.25, :impressions => 38615, :clicks => 9)
  snapshot.campaign_results.create!(:facebook_campaign => mt22, :spend => 7.25, :impressions => 38954, :clicks => 10)
  snapshot.campaign_results.create!(:facebook_campaign => mt51, :spend => 7.19, :impressions => 38793, :clicks => 10)
  snapshot.campaign_results.create!(:facebook_campaign => mt52, :spend => 7.21, :impressions => 34815, :clicks => 3)
  snapshot.campaign_results.create!(:facebook_campaign => mf21, :spend => 8.75, :impressions => 80231, :clicks => 6)
  snapshot.campaign_results.create!(:facebook_campaign => mf22, :spend => 7.79, :impressions => 61087, :clicks => 5)
  snapshot.campaign_results.create!(:facebook_campaign => mf51, :spend => 7.88, :impressions => 69579, :clicks => 4)
  snapshot.campaign_results.create!(:facebook_campaign => mf52, :spend => 8.33, :impressions => 64902, :clicks => 11)
  snapshot.campaign_results.create!(:facebook_campaign => ft21, :spend => 7.55, :impressions => 54025, :clicks => 15)
  snapshot.campaign_results.create!(:facebook_campaign => ft22, :spend => 7.46, :impressions => 52392, :clicks => 13)
  snapshot.campaign_results.create!(:facebook_campaign => ft51, :spend => 7.46, :impressions => 51639, :clicks => 4)
  snapshot.campaign_results.create!(:facebook_campaign => ft52, :spend => 7.48, :impressions => 56767, :clicks => 11)
  snapshot.campaign_results.create!(:facebook_campaign => ff21, :spend => 7.47, :impressions => 58821, :clicks => 9)
  snapshot.campaign_results.create!(:facebook_campaign => ff22, :spend => 7.85, :impressions => 56531, :clicks => 12)
  snapshot.campaign_results.create!(:facebook_campaign => ff51, :spend => 9.99, :impressions => 71158, :clicks => 13)
  snapshot.campaign_results.create!(:facebook_campaign => ff52, :spend => 9.02, :impressions => 66287, :clicks => 12)

  snapshot = campaign.campaign_snapshots.create!(:timestamp => Time.new(2011, 2, 3, 11, 44))
  snapshot.campaign_results.create!(:facebook_campaign => mt21, :spend => 8.09, :impressions => 42869, :clicks => 10)
  snapshot.campaign_results.create!(:facebook_campaign => mt22, :spend => 8.09, :impressions => 43217, :clicks => 11)
  snapshot.campaign_results.create!(:facebook_campaign => mt51, :spend => 8.05, :impressions => 43185, :clicks => 10)
  snapshot.campaign_results.create!(:facebook_campaign => mt52, :spend => 8.06, :impressions => 38914, :clicks => 3)
  snapshot.campaign_results.create!(:facebook_campaign => mf21, :spend => 9.38, :impressions => 86542, :clicks => 9)
  snapshot.campaign_results.create!(:facebook_campaign => mf22, :spend => 8.44, :impressions => 67411, :clicks => 5)
  snapshot.campaign_results.create!(:facebook_campaign => mf51, :spend => 8.58, :impressions => 76657, :clicks => 4)
  snapshot.campaign_results.create!(:facebook_campaign => mf52, :spend => 9.03, :impressions => 71358, :clicks => 12)
  snapshot.campaign_results.create!(:facebook_campaign => ft21, :spend => 8.28, :impressions => 59730, :clicks => 17)
  snapshot.campaign_results.create!(:facebook_campaign => ft22, :spend => 8.19, :impressions => 57982, :clicks => 14)
  snapshot.campaign_results.create!(:facebook_campaign => ft51, :spend => 8.19, :impressions => 56932, :clicks => 4)
  snapshot.campaign_results.create!(:facebook_campaign => ft52, :spend => 8.20, :impressions => 62657, :clicks => 13)
  snapshot.campaign_results.create!(:facebook_campaign => ff21, :spend => 8.23, :impressions => 66008, :clicks => 9)
  snapshot.campaign_results.create!(:facebook_campaign => ff22, :spend => 8.44, :impressions => 62238, :clicks => 12)
  snapshot.campaign_results.create!(:facebook_campaign => ff51, :spend => 10.51, :impressions => 76193, :clicks => 14)
  snapshot.campaign_results.create!(:facebook_campaign => ff52, :spend => 9.66, :impressions => 72551, :clicks => 14)

  snapshot = campaign.campaign_snapshots.create!(:timestamp => Time.new(2011, 2, 3, 13, 0))
  snapshot.campaign_results.create!(:facebook_campaign => mt21, :spend => 8.21, :impressions => 43481, :clicks => 10)
  snapshot.campaign_results.create!(:facebook_campaign => mt22, :spend => 8.21, :impressions => 43845, :clicks => 11)
  snapshot.campaign_results.create!(:facebook_campaign => mt51, :spend => 8.18, :impressions => 43772, :clicks => 10)
  snapshot.campaign_results.create!(:facebook_campaign => mt52, :spend => 8.19, :impressions => 39492, :clicks => 3)
  snapshot.campaign_results.create!(:facebook_campaign => mf21, :spend => 9.56, :impressions => 88178, :clicks => 9)
  snapshot.campaign_results.create!(:facebook_campaign => mf22, :spend => 8.61, :impressions => 69084, :clicks => 5)
  snapshot.campaign_results.create!(:facebook_campaign => mf51, :spend => 8.76, :impressions => 78416, :clicks => 4)
  snapshot.campaign_results.create!(:facebook_campaign => mf52, :spend => 9.22, :impressions => 73067, :clicks => 12)
  snapshot.campaign_results.create!(:facebook_campaign => ft21, :spend => 8.41, :impressions => 60688, :clicks => 17)
  snapshot.campaign_results.create!(:facebook_campaign => ft22, :spend => 8.32, :impressions => 58926, :clicks => 14)
  snapshot.campaign_results.create!(:facebook_campaign => ft51, :spend => 8.31, :impressions => 57807, :clicks => 4)
  snapshot.campaign_results.create!(:facebook_campaign => ft52, :spend => 8.34, :impressions => 63700, :clicks => 13)
  snapshot.campaign_results.create!(:facebook_campaign => ff21, :spend => 8.44, :impressions => 67698, :clicks => 9)
  snapshot.campaign_results.create!(:facebook_campaign => ff22, :spend => 8.62, :impressions => 63857, :clicks => 13)
  snapshot.campaign_results.create!(:facebook_campaign => ff51, :spend => 10.62, :impressions => 77343, :clicks => 14)
  snapshot.campaign_results.create!(:facebook_campaign => ff52, :spend => 9.82, :impressions => 74100, :clicks => 14)
end
