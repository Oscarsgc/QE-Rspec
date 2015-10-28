require_relative '../person'
require 'spec_helper'

describe Person do

  describe "#new" do
    before do
      @person = Person.new
    end

    it "empty constructor returns a Person object" do
      expect(@person).to be_a Person
    end
  end


  describe "#first_name" do
    before do
      @person = Person.new("Oscar", "González", 22)
    end
    it "should return the correct name" do
      expect(@person.first_name).to eql "Oscar"
    end
  end

  describe "#last_name" do
    before do
      @person = Person.new("Oscar", "González", 22)
    end
    it "should return the correct name" do
      expect(@person.last_name).to eql "González"
    end
  end

  describe "#name" do
    it "returns the correct name" do
      @person.first_name.should eql "Oscar"
    end
  end

  describe "#age" do
    before do
      @person = Person.new("Oscar", "González", 22)
    end
    it "should return the correct cash_balance" do
      expect(@person.cash).to eql 100000
    end
  end



end