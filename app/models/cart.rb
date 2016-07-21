class Cart < ActiveRecord::Base
  belongs_to :volunteer
  belongs_to :book
  validates :volunteer_id, :presence => true

end
