class Profile < ActiveRecord::Base
  has_many :books, dependent: :destroy
  belongs_to :user
end
