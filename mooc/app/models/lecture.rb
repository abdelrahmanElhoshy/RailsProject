class Lecture < ActiveRecord::Base
  belongs_to :Course
  	has_many :comments ,dependent: :destroy;
   has_attached_file :attach

   validates_attachment_content_type :attach, :content_type => ["text/plain"]
   

   acts_as_votable

validates :Course_id, presence: true;

  # has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/       
end
