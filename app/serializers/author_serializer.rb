class AuthorSerializer < ActiveModel::Serializer
  has_one :profile, serializer: ProfileSerializer
  has_many :posts, serializer: AuthorPostsSerializer

  attributes :name
end
