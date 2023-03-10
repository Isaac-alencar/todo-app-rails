# frozen_string_literal: true

module Users
  class TodosController < ApplicationController
    include PublicAccessibleController

    def index
      @users_with_todos = User.left_outer_joins(:todos)
    end
  end
end
