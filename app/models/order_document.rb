class OrderDocument < ActiveRecord::Base
  belongs_to :document
  belongs_to :order
end
