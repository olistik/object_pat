require "spec_helper"

describe "Object#pat" do
  it "has a version number" do
    expect(ObjectPat::VERSION).not_to be nil
  end

  context "no block given" do

    it "returns the caller" do
      expect("foo".pat).to eq("foo")
      expect(3.pat).to eq(3)
    end

  end

  context "passing a block" do
    context "the block accepts an argument" do
      context "the block returns a value" do

        it "returns the value returned by the inner block" do
          expect("foo".pat do |argument|
            "bar"
          end).to eq("bar")
        end

      end
    end
  end

end
