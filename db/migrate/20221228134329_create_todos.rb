# frozen_string_literal: true

class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :title, presence: true
      t.boolean :completed, inclusion: { in: [true, false] }

      t.timestamps
    end
  end
end
