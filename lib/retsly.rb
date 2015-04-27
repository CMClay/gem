require "retsly/version"
require "swagger/builder"
require_relative "./swag.rb"

module Retsly
  # Your code goes here...
  def self.hi
    puts 'hi'
  end

  def self.api
    # Swagger.
    puts Swag.api
  end
end
