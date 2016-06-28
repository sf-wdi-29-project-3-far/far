class Food < ActiveRecord::Base
	has_one :user
end
