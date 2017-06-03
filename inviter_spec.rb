require 'rspec'
require_relative 'inviter'
require_relative 'customer'

describe Inviter do
  before do
    @test = Inviter.new
    @test.gather_invitees
  end
  let (:invitee_ids) { @test.sort_invitees.map { |id, name| id } }

  describe "initialize" do
    it "populates customers" do
      expect(@test.customers.length).to eq(32)
    end
  end

  describe "#gather_invitees" do
    it "populates invitees" do
      expect(@test.invitees.length).to eq(14)
    end
  end

  describe "#sort_invitees" do
    it "sorted invitees" do
      expect(invitee_ids).to eq([4, 5, 6, 8, 11, 13, 23, 24, 26, 28, 29, 30, 31, 39])
    end
  end
end
