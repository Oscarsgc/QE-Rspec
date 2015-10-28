require_relative '../discount'
require 'spec_helper'

describe Discount do

  before :each do
    @discount = Discount.new
  end

  describe "#new" do

    it "empty constructor returns a Discount object" do
      expect(@discount).to be_a Discount
    end
  end

  describe "#calculate_discount" do
    # it "if sales ammount is less than or equal to 0 argument error raised" do
      
    #   expect( @discount.calculate_discount(0) ).to raise_error(RuntimeError,"Sales Amount should not be 'Zero/Negative'")

    # end

    it  "if sales ammount is greater than 0 and between 1000 and 2000" do
      expect(@discount.calculate_discount(1000)).to eq 950
    end

    it  "if sales ammount is greater than 0 and between 1000 and 2000" do
      expect(@discount.calculate_discount(2000)).to eq 1700.0
    end

    it  "if sales ammount is greater than 0 and between 1000 and 2000" do
      expect(@discount.calculate_discount(5000)).to eq 2500.0
    end

    it  "if sales ammount is greater than 0 and between 1000 and 2000" do
      expect(@discount.calculate_discount(20001)).to eq 20001.0
    end

  end



end