require 'json'
require "net/http"
require "uri"

class Resource
  attr_reader :children, :schema, :resource, :url, :token, :vendor
  attr_accessor :docs
  def initialize (resource, url, token, vendor)
    # @schema = JSON.parse(json)
    @resource = resource
    @url = url
    @token = token
    @vendor = vendor
  end

  def self.hi
    puts hi
  end

  def all()
    find
  end

  # def where(query)
  #   find('', build_query(query))
  # end

  def find(id = '', query = '')
    if !id.empty?
      id = "/#{id}"
    end 
    path = @url + '/' + @resource + '/' + @vendor + id + "?access_token=#{@token}#{query}"
    puts = "request to #{path}"
    response = HTTParty.get(path, :verify => false)

    parsed =  JSON.parse response.body
    @docs = parsed['bundle']
    # if !id.empty?
    #   @docs.instance_variable_set('@listings', 'wasuuup!')
    # end
  end

  def build_query(arr)
    str = ''
    arr.each do |q|
      str += "&#{q}"
    end
    return str
  end
end