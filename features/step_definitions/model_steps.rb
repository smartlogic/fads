Factory.factories.each do |name, factory|
  Given /^I have a #{name}:$/ do |attrs_table|
    attrs = {:user_id => @user.id}
    attrs_table.raw.each do |(attr, value)|
      sanitized_attr = attr.gsub(/\s+/, "-").underscore
      attrs[sanitized_attr.to_sym] = value
    end
    Factory(name, attrs)
  end

  Given /^a #{name}:$/ do |attrs_table|
    attrs = {}
    attrs_table.raw.each do |(attr, value)|
      sanitized_attr = attr.gsub(/\s+/, "-").underscore
      attrs[sanitized_attr.to_sym] = value
    end
    Factory(name, attrs)
  end
end
