# frozen_string_literal: true

class TodosController < ApplicationController
  def index
    render json: { todos: Todo.all }
  end
end
