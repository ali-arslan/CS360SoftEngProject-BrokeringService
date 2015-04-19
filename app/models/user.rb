class User < ActiveRecord::Base
  attr_accessible :balance, :id, :name, :rating
end
