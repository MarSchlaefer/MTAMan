class Delay < ApplicationRecord
  belongs_to :subway

  validates :name, presence: true
  validates :description, length: {minimum: 500}, presence: true
  validate :title_case

  def title_case
    if description != description.titleize
      errors.add(:description, "must be title cased!")
    end
  end

end
