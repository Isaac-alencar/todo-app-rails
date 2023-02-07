# frozen_string_literal: true

class Todo < ApplicationRecord
  belongs_to :user

  before_create :set_defaults

  validates :title, presence: true

  scope :completed, -> { where(completed: true) }

  def set_defaults
    self.completed = false
  end
end
