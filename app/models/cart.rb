class Cart < ActiveRecord::Base
  belongs_to :volunteer
  belongs_to :book
end
