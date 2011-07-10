require 'spec_helper'

describe Event do
  before (:each) do
    @attr = FactoryGirl.attributes_for(:event)
  end

  it "should create a new instance given a valid attribute" do
    Event.create!(@attr)
  end

  it "should require name" do
    no_name_event = Event.new(@attr.merge(:name => ""))
    no_name_event.should_not be_valid
  end
end
