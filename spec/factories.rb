Factory.define :user do |f|
  f.sequence(:email) {|n| "FrankieUser_#{n}@slsdev.net"}
  f.password  "password"
  f.password_confirmation "password"
end

Factory.define :valid_creative, :class => Creative do |f|
  f.sequence(:name) {|n| "Creative ##{n}"}
  f.title 'This is a valid title'
  f.body 'This is a really nice bod'
  f.link_url 'http://www.smartlogicsolutions.com'
  f.image File.new(Rails.root.join('spec', 'fixtures', 'sample_image.png'))
end

Factory.define :creative, :parent => :valid_creative do |f|
end

Factory.define :valid_campaign, :class => Campaign do |f|
  f.sequence(:name) {|n| "Campaign ##{n}"}
end

Factory.define :campaign, :parent => :valid_campaign do |f|
end

Factory.define :agency do |f|
  f.sequence(:name) {|n| "Agency ##{n}"}
end
