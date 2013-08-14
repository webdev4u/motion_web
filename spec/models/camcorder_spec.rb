require 'spec_helper'

describe Camcorder do
  it "has a valid factory" do
  	FactoryGirl.create(:camcorder).should be_valid
  end
  it "is invalid without a thread" do
  	FactoryGirl.build(:camcorder, thread: nil).should_not be_valid
  end
  it "is invalid without a name" do
  	FactoryGirl.build(:camcorder, name: nil).should_not be_valid
  end
  it "is valid without a description" do
  	FactoryGirl.build(:camcorder, description: nil).should be_valid
  end
end
