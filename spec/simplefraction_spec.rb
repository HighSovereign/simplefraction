require "spec_helper"

describe Simplefraction do
	it "has a version number" do
		expect(Simplefraction::VERSION).not_to be nil
	end
	it "is a module" do
		expect(Simplefraction).to be_a(Module)
	end
	
	describe Simplefraction::Fraction do
		it "is a class" do
			expect(Simplefraction::Fraction).to be_a(Class)
		end
		
		describe "Simplefraction::Fraction#new" do
			it "returns a fraction" do
				@fraction = Simplefraction::Fraction.new(1, 2)
				expect(@fraction).to be_a(Simplefraction::Fraction)
			end
		end
		describe "Simplefraction::Fraction#numerator" do
			it "returns the numerator" do
				@fraction = Simplefraction::Fraction.new(1, 2)
				expect(@fraction.numerator).to eq(1)
			end
		end
		describe "Simplefraction::Fraction#numerator=" do
			it "sets the numerator" do
				@fraction = Simplefraction::Fraction.new(1, 3)
				@fraction.numerator=(2)
				expect(@fraction.numerator).to eq(2)
			end
		end
		describe "Simplefraction::Fraction#num" do
			it "points to Simplefraction::Fraction#numerator" do
				@fraction = Simplefraction::Fraction.new(1, 2)
				expect(@fraction.num).to eq(@fraction.numerator)
			end
		end
		describe "Simplefraction::Fraction#num=" do
			it "points to Simplefraction::Fraction#numerator=" do
				@fraction = Simplefraction::Fraction.new(1, 2)
				expect(@fraction.num=(3)).to eq(@fraction.numerator=(3))
			end
		end
		describe "Simplefraction::Fraction#denominator" do
			it "returns the denominator" do
				@fraction = Simplefraction::Fraction.new(1, 2)
				expect(@fraction.denominator).to eq(2)
			end
		end
		describe "Simplefraction::Fraction#denominator=" do
			it "sets the denominator" do
				@fraction = Simplefraction::Fraction.new(1, 2)
				@fraction.denominator=(3)
				expect(@fraction.denominator).to eq(3)
			end
		end
		describe "Simplefraction::Fraction#den" do
			it "points to Simplefraction::Fraction#denominator" do
				@fraction = Simplefraction::Fraction.new(1, 2)
				expect(@fraction.den).to eq(@fraction.denominator)
			end
		end
		describe "Simplefraction::Fraction#den=" do
			it "points to Simplefraction::Fraction#denominator=" do
				@fraction = Simplefraction::Fraction.new(1, 2)
				expect(@fraction.num=(3)).to eq(@fraction.numerator=(3))
			end
		end
		describe "Simplefraction::Fraction#to_decimal" do
			it "returns the decimal value" do
				@fraction = Simplefraction::Fraction.new(1, 2)
				expect(@fraction.to_decimal).to eq(@fraction.num/@fraction.den)
			end
		end
		describe "Simplefraction::Fraction#to_d" do
			it "points to Simplefraction::Fraction#to_decimal" do
				@fraction = Simplefraction::Fraction.new(1, 2)
				expect(@fraction.to_d).to eq(@fraction.to_decimal)
			end
		end
		describe "Simplefraction::Fraction#display" do
			it "displays a string version of itself" do
				@fraction = Simplefraction::Fraction.new(1, 2)
				expect(@fraction.display).to eq("(1/2)")
			end
		end
	end
end
