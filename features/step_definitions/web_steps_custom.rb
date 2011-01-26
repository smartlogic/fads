Then /^the "([^"]*)" subnav should be selected$/ do |link_text|
  assert find("#subnav a.selected").has_content?(link_text)
end
