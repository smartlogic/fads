Given /^the agency named "([^"]*)"$/ do |agency_name|
  Factory(:agency, :name => agency_name)
end
