require 'spec_helper'

describe Campaign, "newly created" do
  subject {Factory.build(:valid_campaign)}

  it {should be_valid}

  context "without a name" do
    before {subject.name = nil}

    it {should_not be_valid}
  end

  context "with a duplicate name" do
    before {Factory(:valid_campaign, :name => subject.name)}

    it {should_not be_valid}
  end
end
