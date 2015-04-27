require "swagger"
require "net/http"
require "uri"

module Retsly
  class Api
    attr_accessor :api
    def initialize
      path = Dir.pwd + '/lib/retsly/swagger.json'
      puts path
      @api = Swagger.load(path);
    end

    def host
      'https://' + @api.host + @api.basePath
    end

    # private

    def get(path)
      path = 'https://dev.rets.io/api/v1/listing/test?access_token=43147991398c29d166dd70152caa3600'
      uri = URI.parse path
      response = NET::HTTP.get_response(uri)
      puts response
    end
  end
end