class Quote < ApplicationRecord
  belongs_to :company

  broadcasts_to ->(quote) { "quotes" }, inserts_by: :prepend

  validates :name, presence: true
  scope :ordered, -> { order(id: :desc) }
end
