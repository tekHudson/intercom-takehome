require 'rspec'
require_relative 'inviter'
require_relative 'customer'

describe Inviter do
  before do
    @test = Inviter.new
    @test.gather_invitees
  end

  describe "initialize" do
    it "populates customers" do
      expect(@test.customers.length).to eq(32)
    end
  end
end
