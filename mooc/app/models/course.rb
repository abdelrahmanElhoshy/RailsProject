class Course < ActiveRecord::Base
  belongs_to :User


  after_initialize :init

  def init
  		self.User_id ||= User.current_user.id if User.current_user
  end	
end
