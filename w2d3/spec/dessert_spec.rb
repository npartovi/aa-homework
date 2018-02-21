require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Nima" ) }
  subject(:popsicle) {Dessert.new("popsicle",50, chef)}
  


  describe "#initialize" do
    it "sets a type" do
      expect(popsicle.type).to eq("popsicle")
    end
    it "sets a quantity" do
      expect(popsicle.quantity).to be(50)
    end

    it "starts ingredients as an empty array" do
      expect(popsicle.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("popsicle", "50", "nima")}.to raise_error(ArgumentError)
    end

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      popsicle.add_ingredient("ice")
      popsicle.add_ingredient("water")
      popsicle.add_ingredient("food_coloring")
      expect(popsicle.ingredients).to include("ice")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(popsicle.mix!).not_to eq(["ice","water","food_coloring"])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      popsicle.eat(10)
      expect(popsicle.quantity).to eq(40)
    end


    it "raises an error if the amount is greater than the quantity" do
      expect{ popsicle.eat(60) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(chef).to receive(:titleize).and_return("Chef Nima the Great Baker")
      expect(popsicle.serve).to eq("Chef Nima the Great Baker has made 50 popsicles!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(popsicle)
      popsicle.make_more
    end

  end
end
