class Admin < ActiveRecord::Base
	
  def self.chek username, password
    return true if Admin.find_by username:username, password:password
	  false
  end
end
