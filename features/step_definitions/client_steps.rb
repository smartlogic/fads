Given /^my agency has the client "([^"]*)"$/ do |agency_name|
  Factory(:client, :agency => @user.agency)
end
