require 'json'
require 'haversine'

class Inviter
  OFFICE_LOCATION = [53.3393, -6.2576841]
  MAX_DISTANCE = 100

  def initialize
    @customers = {}
    @invitees = {}

    parse_customer_list
  end

  def gather_invitees
    @customers.each do |id, info|
      dist = Haversine.distance(info[:latitude].to_i, info[:longitude].to_i, *(OFFICE_LOCATION)).to_km

      @invitees[id] = info[:name] if dist < MAX_DISTANCE
    end
  end

  def order_invitees
    @invitees.sort.to_h if @invitees.length > 1
  end

  private

  def parse_customer_list
    begin
      file = File.read('gistfile1.json')
      # handle any type of line endings
      file.gsub!(/\r\n?/, "\n")

      file.each_line do |line|
        parsed_line = JSON.parse(line)
        @customers[parsed_line["user_id"]] = { name: parsed_line["name"],
                                               latitude: parsed_line["latitude"],
                                               longitude: parsed_line["longitude"] }
      end
    rescue => e
      puts "Unable to parse the customer list.\n"
      raise e.backtrace.inspect
    end
  end
end
