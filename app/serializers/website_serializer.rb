class WebsiteSerializer < ActiveModel::Serializer
  attributes :id, :rank, :url, :screenshot, :page_views_per_user, :page_views_per_million
end
