require 'spec_helper'

describe Spree::Product do
  let(:product) { FactoryGirl.create(:product, taxons: [FactoryGirl.create(:taxon)])}
  let(:product_params) {
    {
        id: product.id,
        name: product.name,
        category_ids: product.taxon_ids,
        version: product.updated_at.to_i,
        pdp_url: product.permalink,
        price: product.price,
        on_sale: false,
        custom_field: "",
        status: product.on_display? ? "active" : "on_hold",
        launch_date: product.available_on,
        description: product.description,
        fulltext_keywords: [product.meta_description, product.meta_keywords].join(' ')
    }
  }

  context "#update_catalogillo" do
    it "appends update_catalogillo callback" do
      Spree::Product._save_callbacks.select { |cb| cb.kind.eql?(:after) }.collect(&:filter).should include :index_on_catalogillo
    end

    it "builds the correct payload to be sent to the service" do
      Spree::Catalogillo::Indexer.stub(:perform)
      product.send(:catalogillo_payload).should == product_params
    end

    it "sends the update to catalogillo" do
      Spree::Catalogillo::Indexer.should_receive(:perform).with("/api/v1/products/index", {products: [product_params]}).at_least(1)
      product.send(:index_on_catalogillo)
    end
  end
end
