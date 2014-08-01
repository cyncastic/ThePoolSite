class Customer < ActiveRecord::Base
	has_one :pool_types
end
