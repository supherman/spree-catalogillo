module Spree
  module Catalogillo
    class Indexer
      class IndexException < Exception ; end
      def self.perform endpoint = "", data
        response = HTTParty.post(Spree::Catalogillo::Config.host_url + endpoint, body: data)
        unless response.code < 300
          raise IndexException.new("Error indexing object")
        end
      end
    end
  end
end
