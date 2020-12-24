class Event < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :produce
  belongs_to :ridge

  with_options presence: true do
    validates :ridge_id, :produce_id, numericality: { other_than: 0 }
  end
end
