class Course < ActiveRecord::Base
  belongs_to :User
  has_many :lectures,dependent: :destroy;

  validates :title, presence: true;  

  after_initialize :init

  def init
  		self.User_id ||= User.current_user.id if User.current_user
  end	
end
