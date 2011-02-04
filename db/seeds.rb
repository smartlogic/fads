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

  campaign.facebook_campaigns.create!(:name => 'mt21', :image => '02.png', 
    :copy => 'v1', :gender => 'M', :likes_law_and_order => true)

  campaign.facebook_campaigns.create!(:name => 'mt22', :image => '02.png', 
    :copy => 'v2', :gender => 'M', :likes_law_and_order => true)

  campaign.facebook_campaigns.create!(:name => 'mt51', :image => '05.png', 
    :copy => 'v1', :gender => 'M', :likes_law_and_order => true)

  campaign.facebook_campaigns.create!(:name => 'mt52', :image => '05.png', 
    :copy => 'v2', :gender => 'M', :likes_law_and_order => true)

  campaign.facebook_campaigns.create!(:name => 'mf21', :image => '02.png', 
    :copy => 'v1', :gender => 'M', :likes_law_and_order => false)

  campaign.facebook_campaigns.create!(:name => 'mf22', :image => '02.png', 
    :copy => 'v2', :gender => 'M', :likes_law_and_order => false)

  campaign.facebook_campaigns.create!(:name => 'mf51', :image => '05.png', 
    :copy => 'v1', :gender => 'M', :likes_law_and_order => false)

  campaign.facebook_campaigns.create!(:name => 'mf52', :image => '05.png', 
    :copy => 'v2', :gender => 'M', :likes_law_and_order => false)

  campaign.facebook_campaigns.create!(:name => 'ft21', :image => '02.png', 
    :copy => 'v1', :gender => 'F', :likes_law_and_order => true)

  campaign.facebook_campaigns.create!(:name => 'ft22', :image => '02.png', 
    :copy => 'v2', :gender => 'F', :likes_law_and_order => true)

  campaign.facebook_campaigns.create!(:name => 'ft51', :image => '05.png', 
    :copy => 'v1', :gender => 'F', :likes_law_and_order => true)

  campaign.facebook_campaigns.create!(:name => 'ft52', :image => '05.png', 
    :copy => 'v2', :gender => 'F', :likes_law_and_order => true)

  campaign.facebook_campaigns.create!(:name => 'ff21', :image => '02.png', 
    :copy => 'v1', :gender => 'F', :likes_law_and_order => false)

  campaign.facebook_campaigns.create!(:name => 'ff22', :image => '02.png', 
    :copy => 'v2', :gender => 'F', :likes_law_and_order => false)

  campaign.facebook_campaigns.create!(:name => 'ff51', :image => '05.png', 
    :copy => 'v1', :gender => 'F', :likes_law_and_order => false)

  campaign.facebook_campaigns.create!(:name => 'ff52', :image => '05.png', 
    :copy => 'v2', :gender => 'F', :likes_law_and_order => false)

end
