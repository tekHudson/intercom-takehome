require 'rspec'
require_relative '../lib/flatten_clone'

describe Array do
  describe "when a single element arrary is passed" do
    it "returns correctly" do
      expect([1].squash).to eq([1])
    end
  end
end
