class Article < ActiveRecord::Base
  has_many :links
  belongs_to :issue
end
