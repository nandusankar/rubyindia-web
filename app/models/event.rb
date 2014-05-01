class Event < ActiveRecord::Base
  has_many :links
  belongs_to :issue
end
