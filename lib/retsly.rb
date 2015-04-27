require "retsly/version"
# require_relative "retsly/swagger"
require_relative "retsly/api"

module Retsly
  # Your code goes here...
  def self.hi
    puts 'hi'
  end

  # def self.api
  #   # Swagger.
  #   path = Dir.pwd + '/lib/retsly/swagger.json'
  #   Dir.entries('./lib/retsly')
  #   api = Swagger.load(path)

  #   api.operations.each do | operation |
  #     puts operation.signature
  #   end
  # end
  def self.api
    Api.new
  end
end
