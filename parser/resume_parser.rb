#!/usr/bin/env ruby

require_relative 'processor'

puts "Enter command and arguments: e.g. PARSE [file_name]"
puts "Note: Json object should be in the root directory of the app."

if ARGV.length > 0
  file_path = "/../#{ARGV[0]}"
  puts File.read(File.dirname(__FILE__) + file_path)
  puts "Take note command is case sensitive."
end

processor = Processor.new

command = STDIN.gets
while command
  output = processor.execute(command)
  puts output if output
  command = STDIN.gets
end
