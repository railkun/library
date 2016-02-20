class Book < ActiveRecord::Base
  belongs_to :category
  #TODO add author
end
