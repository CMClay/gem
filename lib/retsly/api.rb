require "swagger"
require "net/http"
require "uri"

require 'httparty'

module Retsly
  class Api
    attr_reader :schema, :url, :endpoints, :resources, :token
    def initialize(vendor='test', token='43147991398c29d166dd70152caa3600')
      path = Dir.pwd + '/lib/retsly/swagger.json'
      @schema = Swagger.load(path);
      @url = 'https://' + @schema.host + @schema.basePath
      @token = token
      @vendor = vendor
      create_methods
      
      create_attr('booya')
      self.booya = 'booooooya'
    end

    def endpoints
    end

    # def get_resources
    #   paths = @schema.
    # end

    # private

    def get()
      puts @url
      response = HTTParty.get("https://dev.rets.io/api/v1/listing/test?access_token=#{@token}", :verify => false)
      puts response.body
    end

    def create_methods
      # paths = @schema.paths.
      create_method(:listing) {puts 'test'}
    end

    def create_method(name, &block)
      self.class.send(:define_method, name, &block)
    end

    def create_attr( name )
      create_method( "#{name}=".to_sym ) { |val| 
          instance_variable_set( "@" + name, val)
      }
      create_method( name.to_sym ) { 
          instance_variable_get( "@" + name ) 
      }
    end
  end
end