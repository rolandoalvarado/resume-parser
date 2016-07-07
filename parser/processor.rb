require 'json'

class Processor

  def execute(command, file_path)
    return if command.strip.empty?

    tokens = command.split(/\s+/)
    operator = tokens.first
    arguments = { tokens: tokens.last, file_path: file_path }

    case operator
    when 'PARSE'
      parse_file(arguments)
    else
      "Ignoring invalid command #{operator}."
    end
  end

  private 

  def parse_file(arguments)
  	message = nil

    begin
      file = File.read(File.dirname(__FILE__) + arguments[:file_path])
      data_hash = JSON.parse(file)
      puts "data_hash : #{data_hash.inspect}"

      unless data_hash.nil?
        message = "File is empty."
        exit
      end
    rescue
      message = "An error occured while trying to parse file."
      exit
    end

    message
  end

end
