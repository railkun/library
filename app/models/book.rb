class Book < ActiveRecord::Base
  mount_uploader :cover, BookCoverUploader

  belongs_to :category
  belongs_to :author

  validates :title, presence: true
  validates :category_id, presence: true
  validates :author_id, presence: true
  #TODO add author
end
