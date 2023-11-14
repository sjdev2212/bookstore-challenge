class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :description, :image, :created_at, :updated_at

  def image
    object.image.url
  end
end
