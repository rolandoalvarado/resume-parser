# Resume Parser

# Usage:
  $ parser/resume_parser.rb
  COMMAND json_file

# Running:

  Interactively:

    $ parser/resume_parser.rb
    PARSE test.json


  With invalid commands:

    $ parser/resume_parser.rb
    parse test.csv
    Ignoring invalid command parse.

  Specs, documentation and quality checks are automated through rake.  E.g. to display a list of all tasks:

    $ rake -T
    rake default        # Runs all specs and quality tests, then generates documentation
    rake documentation  # Generates HTML documentation from Markdown files
    rake quality        # Check for design issues in: **/*.rb
    rake specs          # Run RSpec code examples

  To run everything:

    ➜  resume-parser git:(master) ✗ rake specs
    /home/blake/.rbenv/versions/2.3.1/bin/ruby -I/home/blake/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/rspec-support-3.5.0/lib:/home/blake/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/rspec-core-3.5.1/lib /home/blake/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/rspec-core-3.5.1/exe/rspec --pattern spec/\*_spec.rb --backtrace
    ..

    Finished in 0.01015 seconds (files took 0.17343 seconds to load)
    3 examples, 0 failures

    Coverage report generated for RSpec to /home/blake/Documents/Projects/Tests/resume-parser/coverage. 16 / 23 LOC (69.57%) covered.

Run 'rake generate_all' to create specification file and html version of README file.