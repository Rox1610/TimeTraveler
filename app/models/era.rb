class Era < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  include PgSearch::Model

  pg_search_scope :search_by_title_and_content,
                  against: %i[title content],
                  using: {
                    tsearch: { prefix: true }
                  }
end
