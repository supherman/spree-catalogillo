Spree::Product.class_eval do
  after_save :index_on_catalogillo

  private
  def index_on_catalogillo
    Spree::Catalogillo::Indexer.perform("/api/v1/products/index", {products: [catalogillo_payload]})
  end

  def catalogillo_payload
    {
        id: id,
        name: name,
        category_ids: taxon_ids,
        version: updated_at.to_i,
        pdp_url: permalink,
        price: price,
        on_sale: false,
        custom_field: "",
        status: on_display? ? "active" : "on_hold",
        launch_date: available_on,
        description: description,
        fulltext_keywords: [meta_description, meta_keywords].join(' ')
    }
  end
end
