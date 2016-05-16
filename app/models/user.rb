class User < ActiveRecord::Base
  acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  ## Validations
  
  validates :password, :username, :genre, presence: true

  has_many :movies

  def is_admin?
    self.is_admin == true
  end
end
