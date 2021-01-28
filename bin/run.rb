require_relative '../config/environment'

require_relative '../lib/api_seeder.rb'
require_relative '../lib/command_line.rb'

run = CommandLine.new
run.call


