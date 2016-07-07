#!/usr/bin/env ruby

require_relative 'processor'

if ARGV.length > 0
  file_path = "/../files/#{ARGV[0]}"
  puts File.read(File.dirname(__FILE__) + file_path)
  puts "Take note command is case sensitive."
end

processor = Processor.new

command = STDIN.gets
while command
  output = processor.execute(command, file_path)
  puts output if output
  command = STDIN.gets
end
