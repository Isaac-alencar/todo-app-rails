# frozen_string_literal: true

module PublicAccessibleController
  extend ActiveSupport::Concern

  included do
    skip_before_action :authenticate_user!
  end
end
