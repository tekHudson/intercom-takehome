#!/usr/bin/env ruby
require_relative 'inviter'

inviter = Inviter.new

inviter.gather_invitees

inviter.order_invitees.each do |k, v|
  puts "Id: #{k} Name: #{v}\n"
end
