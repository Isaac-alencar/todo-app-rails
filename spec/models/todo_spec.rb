# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Todo do
  describe '#set_defaults' do
    let(:test_user) { User.create(name: 'user test') }

    it 'creates a todo with completed value as false by default' do
      todo = described_class.create(title: 'Task 1', user: test_user)

      expect(todo[:completed]).to be(false)
    end

    it 'creates a todo with completed value as false even though pass true' do
      todo = described_class.create(title: 'Task 1', completed: true, user: test_user)

      expect(todo[:completed]).to be(false)
    end
  end
end
