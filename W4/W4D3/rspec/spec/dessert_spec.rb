require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:chef) {double("chef", name: "Charlie")}
  subject(:cake) {Dessert.new("baked good", 5, chef)}

  describe "#initialize" do
    it "sets a type"
      expect(cake.type).to eq("baked good")
    end

    it "sets a quantity" do 
      expect(cake.quantity).to eq(5)
    end

    it "starts ingredients as an empty array" do 
      expect(cake.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new("cake", "lots and lots", chef)}.to raise_error(Argument Error)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      cake.add_ingredient("flour")
      expect(cake.ingredients).to include("flour")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      ingredients = ["flour", "eggs", "milk", "butter"]
      cake.ingredients = ingredients
      cake.mix!
      expect(cake.ingredients).not_to eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      cake.eat(2)
      expect(cake.quantity).to eq(7)
    end

    it "raises an error if the amount is greater than the quantity" do
      cake.quantity = 5
      expect {cake.eat(6)}.to raise_error("the amount is greater than the quanity")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
    expect(cake.serve).to include(chef.name.titleize)
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
    expect(chef).to receive(:bake).with(cake)
  end
end
