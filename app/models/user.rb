class User < ActiveRecord::Base
  
  devise :database_authenticatable, :registerable,
        :rememberable, :validatable


  has_many :reports

end
