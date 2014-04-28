class Report < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode

  validates :photo, presence: true,  format: {
      with: %r{\.(gif|jpg|png)\z}i,
      message: 'Warning: Links need to end in .png, .jpg or .gif'
  }
end
