Given /^my client has the creative "([^"]*)"$/ do |creative_name|
  client = @user.agency.clients.first || Factory(:client, :agency => @user.agency)
  Factory(:creative, :client => client, :name => creative_name)
end
