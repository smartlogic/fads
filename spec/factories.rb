Factory.define :user do |f|
  f.sequence(:email) {|n| "FrankieUser_#{n}@slsdev.net"}
  f.password  "password"
  f.password_confirmation "password"
end
