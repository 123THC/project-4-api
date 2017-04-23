class CommentSerializer < ActiveModel::Serializer

  belongs_to :user
  belongs_to :job
  
  attributes :id, :body, :rating
end
