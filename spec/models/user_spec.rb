# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User do
  subject(:user) { described_class.new(name: 'user') }

  describe '#new_user' do
    it { is_expected.to be_valid }

    it 'do not create a user without a name' do
      user.name = nil

      expect(user).not_to be_valid
    end
  end
end
