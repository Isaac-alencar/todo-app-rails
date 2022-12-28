# frozen_string_literal: true

class Todo < ApplicationRecord
  before_create :set_defaults

  validates :title, presence: true

  def set_defaults
    self[:completed] = false
  end
end
