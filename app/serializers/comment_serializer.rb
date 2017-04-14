class CommentSerializer < ActiveModel::Serializer

  attributes :id, :body, :rating
  has_one :user
  has_one :job
end
