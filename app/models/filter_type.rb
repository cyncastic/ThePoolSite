class FilterType < ActiveRecord::Base
  validates :name, presence: true
end
