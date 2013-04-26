require 'spec_helper'

describe "Spree::Catalogillo::Config" do
  it "saves catalogillo url" do
    Spree::Catalogillo::Config.host_url.should == "http://localhost:3000/store"
  end
end