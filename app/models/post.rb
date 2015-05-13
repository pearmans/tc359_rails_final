class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  mount_uploader :image, ImageUploader
  paginates_per 9

  validates_presence_of :title, :body, :category_id

  def self.search(search)
    if search
      where('LOWER(title) LIKE LOWER(?)', "%#{search}%")
    else
      all
    end
  end
end
