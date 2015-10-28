require_relative '../person'
require 'spec_helper'

describe Person do

  before :each do
    @person = Person.new("Oscar", "González", 22)
  end

  describe "#new" do
    it "takes three parameters and returns a Person object" do
      @person.should be_an_instance_of Person
    end
  end

  describe "#name" do
    it "returns the correct name" do
      @person.first_name.should eql "Oscar"
    end
  end
  
end