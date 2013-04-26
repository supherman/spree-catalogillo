module Spree
  module Catalogillo
    class Indexer
      class IndexException < Exception ; end
      def self.perform endpoint = "", data
        #response = Typhoeus::Request.post(Spree::Catalogillo::Config.host_url + endpoint, body: data)
        response = HTTParty.post(Spree::Catalogillo::Config.host_url + endpoint, body: data)
        unless response.code < 300
          raise IndexException.new("Error indexing object")
        end
        #uri = URI(Spree::Catalogillo::Config.host_url + endpoint)
        #Net::HTTP.start(uri.host, uri.port) do |http|
        #  response = http.post uri.path, URI.encode_www_form(data)
        #  unless response.code.to_i < 300
        #    raise IndexException.new("Error indexing object")
        #  end
        #end
      end
    end
  end
end