class Book < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: true
  #TODO add author
end
