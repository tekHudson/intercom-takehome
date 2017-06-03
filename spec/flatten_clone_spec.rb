require 'rspec'
require_relative '../lib/flatten_clone'

describe Array do
  describe "when a single element arrary is passed" do
    it "returns correctly" do
      expect([1].squash).to eq([1])
    end
  end

  describe "when an already flattened arrary is passed" do
    it "returns correctly" do
      expect([1, 2, 3, 4].squash).to eq([1, 2, 3, 4])
    end
  end
end
