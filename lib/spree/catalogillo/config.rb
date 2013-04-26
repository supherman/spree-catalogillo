require 'singleton'
module Spree
  module Catalogillo
    class Config

      include Singleton
      attr_accessor :host_url

      def initialize
        @host_url = "http://localhost:3000/store"
      end

      class << self
        def method_missing method, *args
          if instance.respond_to? method
            instance.send(method, *args)
          else
            super(method, *args)
          end
        end
      end
    end
  end
end
