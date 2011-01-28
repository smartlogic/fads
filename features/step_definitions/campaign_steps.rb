Given /^my agency has the campaign named "([^"]*)"$/ do |campaign_name|
  Given %Q{the agency named "#{@user.agency.name}" has a campaign named "#{campaign_name}"}
end

Given /^the agency named "([^"]*)" has a campaign named "([^"]*)"$/ do |agency_name, campaign_name|
  agency = Agency.find_by_name(agency_name)
  agency.campaigns.create(:name => campaign_name)
end

Given /^my client has the campaign "([^"]*)"$/ do |campaign_name|
  client = @user.agency.clients.first || Factory(:client, :agency => @user.agency)
  client.campaigns.create(:name => campaign_name)
end
