class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :era
  enum status: {
    pending: 0,
    confirmed: 1,
    rejected: 2
  }
end
