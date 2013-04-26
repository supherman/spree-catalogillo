module Spree
  module Catalogillo
    class Engine < ::Rails::Engine
      isolate_namespace Spree::Catalogillo
    end
  end
end