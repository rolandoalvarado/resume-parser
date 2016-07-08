require 'json'
require 'redcloth'

class Processor

  def execute(command)
    return if command.strip.empty?

    tokens = command.split(/\s+/)
    operator  = tokens.first
    arguments = "/../#{tokens.last}"

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
      file = File.read(File.dirname(__FILE__) + arguments)
      data_hash = JSON.parse(file)
      text_data = " Title: Software Engineer
                    Name: #{data_hash['name']}
                    Address: #{data_hash['address']}
                    Mobile Number: #{data_hash['mobile_number']}
                    Email: #{data_hash['email']}
                    Career Objective: #{data_hash['career_objective']}
                    Skills: #{data_hash['skills']}
                  " 

      formatted_data = RedCloth.new %{"#{text_data}"}

	    puts formatted_data.to_html

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
