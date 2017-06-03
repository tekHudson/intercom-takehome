#!/usr/bin/env ruby
require_relative './lib/inviter'

inviter = Inviter.new

inviter.gather_invitees

inviter.sort_invitees.each do |k, v|
  puts "Id: #{k} Name: #{v}\n"
end
