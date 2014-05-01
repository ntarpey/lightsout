class Report < ActiveRecord::Base
  belongs_to :user
  #before_action :authenticate_user!

  geocoded_by :address
  after_validation :geocode

  validates :photo, presence: true,  format: {
      with: %r{\.(gif|jpg|png)\z}i,
      message: "Warning: Links need to end in .png, .jpg or .gif.  Please edit the Photo field to continue."
  }

  validates :address, presence: true
  validates :description, presence: true
end
