Factory.define :user do |f|
  f.sequence(:email) {|n| "FrankieUser_#{n}@slsdev.net"}
  f.password  "password"
  f.password_confirmation "password"
end

Factory.define :valid_creative, :class => Creative do |f|
  f.title 'This is a valid title'
  f.body 'This is a really nice bod'
  f.link_url 'http://www.smartlogicsolutions.com'
  f.image File.new(Rails.root.join('spec', 'fixtures', 'sample_image.png'))
end
