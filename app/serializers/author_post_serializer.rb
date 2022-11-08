class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content

  has_many :tags
end
