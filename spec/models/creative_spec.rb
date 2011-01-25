require 'spec_helper'

describe Creative, "newly created" do
  subject{Factory.build(:valid_creative)}

  it {should be_valid}

  context "without a title" do
    before {subject.title = nil}

    it {should_not be_valid}
  end

  context "with a title longer than 25 characters" do
    before {subject.title = "This is a title that is much to long for Mark Z at facebook"}

    it {should_not be_valid}
  end

  context "without a body" do
    before {subject.body = nil}

    it {should_not be_valid}
  end

  context "without an image" do
    before {subject.remove_image!}

    it {should_not be_valid}
  end

  context "without a link url" do
    before {subject.link_url = nil}

    it {should_not be_valid}
  end

  context "with a body longer than 135 characters" do
    before do
      3.times do
        subject.body += 'This is a super long body that no one would ever actually enter because it is much much much too long'
      end
    end

    it {should_not be_valid}
  end
end
