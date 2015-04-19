class Bet < ActiveRecord::Base
  attr_accessible :teamid, :timestamp, :userid, :value
end
