require_relative '../person'
require 'spec_helper'

describe person do

  before :each do
    @person = Person.new("Oscar", "González", 22)
  end

  describe "#new" do
    it "takes three parameters and returns a Person object" do
      @person.should be_an_instance_of Person
    end
  end
end