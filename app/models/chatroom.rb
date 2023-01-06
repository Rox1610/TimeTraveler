class Chatroom < ApplicationRecord
  has_many :messages

  include PgSearch::Model

  pg_search_scope :search_by_name,
                  against: %i[name],
                  using: {
                    tsearch: { prefix: true }
                  }
end
