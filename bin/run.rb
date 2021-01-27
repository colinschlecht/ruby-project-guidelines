require_relative '../config/environment'

require_relative '../lib/api_communicator.rb'
require_relative '../lib/command_line.rb'



puts "HELLO WORLD"

test = ApiSeeder.new 
test.get_info_from_api
