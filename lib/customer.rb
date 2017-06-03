require 'json'

class Customer
  attr_reader :user_id, :name, :latitude, :longitude
  def initialize(user_id, name, lat, long)
    @user_id  = user_id
    @name = name
    @latitude = lat
    @longitude = long
  end

  def self.parse_customer_list(file_name)
    begin
      results = []
      file = File.read(file_name)
      # handle any type of line endings
      file.gsub!(/\r\n?/, "\n")

      file.each_line do |line|
        parsed_line = JSON.parse(line)
        results << self.new(parsed_line["user_id"].to_i,
                            parsed_line["name"],
                            parsed_line["latitude"].to_i,
                            parsed_line["longitude"].to_i)
      end
      results
    rescue => e
      puts "Unable to parse the customer list.\n"
      raise e.backtrace.inspect
    end
  end
end
