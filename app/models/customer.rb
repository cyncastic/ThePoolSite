class Customer < ActiveRecord::Base
  belongs_to :filter_type
  belongs_to :pool_type

  validates :name, presence: true
end
