require 'coderay'

puts CodeRay.scan("puts 'Hello, world!'", :ruby).div(:line_numbers => :table)
