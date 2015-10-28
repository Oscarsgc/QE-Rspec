require_relative '../person'
require 'spec_helper'

describe Person do

  before :each do
    @person = Person.new("Oscar", "González", 22)
  end

  describe "#new" do
    before do
      @person = Person.initializer
    end

    it "empty constructor returns a Person object" do
      expect(@person).to be_a Person
    end
  end


  describe "#first_name" do
    it "should return the correct name" do
      expect(@person.first_name).to eql "Oscar"
    end
  end

  describe "#last_name" do
    it "should return the correct name" do
      expect(@person.last_name).to eql "González"
    end
  end

  describe "#name" do
    it "returns the correct name" do
      expect(@person.first_name).to eql "Oscar"
    end
  end
  describe "#age" do
    it "should return the correct age" do
      expect(@person.age).to eql 22
    end
  end

  describe "#cash" do
    it "should return the correct cash_balance" do
      expect(@person.cash).to eql 100000
    end
  end

  describe "#full_name" do
    it "should return the full name" do
      expect(@person.get_full_name).to eql "Oscar González"
    end
  end

  describe "#buy_car" do
    it "should let me buy a car" do
      expect(@person.buy_car(-98732)).to eql true
    end

    it "shouldn't let me buy a car" do
      expect(@person.buy_car(-198732)).to eql false
    end
  end
end