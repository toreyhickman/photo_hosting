class Photo < ActiveRecord::Base
  require 'carrierwave/orm/activerecord'

  validates :name, :presence => true
  mount_uploader :file, PhotoUploader
end