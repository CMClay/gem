require "swagger"
require "net/http"
require "uri"

require 'httparty'
require_relative './resource'

module Retsly
  class Api
    attr_reader :schema, :url, :endpoints, :resources
    attr_accessor :vendor, :token
    def initialize(vendor='test', token='5OylUxE1Z3T8u3Fbcy8LLUJeao5IidzW')
      path = Dir.pwd + '/lib/retsly/swagger.json'
      @schema = Swagger.load(path);
      @url = 'https://' + @schema.host + @schema.basePath
      @token = token
      @vendor = vendor

      create_methods()
      get_resources()
      get_endpoints()
    end

    def get_endpoints
      @endpoints = []
      @schema.operations.each do | operation |
        @endpoints.push operation.signature
      end
    end

    def get_resources
      @resources = []
      @schema.operations.each do | operation |
        operation.path.split('/').each do |seg|
          @resources.push seg
        end
      end
      @resources.select! { |r| r[0] != '{' && !r.empty?}
      @resources.uniq!
      @resources.each do |r|
        create_attr(r)
        # self.instance_variable_set("@#{r}", 'testinggg')
        self.instance_variable_set("@#{r}", Resource.new(r, @url, @token, @vendor))
      end
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