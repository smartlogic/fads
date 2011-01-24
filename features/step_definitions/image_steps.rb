When /^I attach the fixture file "([^"]+)" to "([^"]+)"$/ do |file_name, field_name|
  When %{I attach the file "#{Rails.root.join('spec', 'fixtures', file_name)}" to "#{field_name}"}
end

