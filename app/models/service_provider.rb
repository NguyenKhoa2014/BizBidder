class ServiceProvider < ApplicationRecord
  belongs_to :user
  has_many :proposals
end
