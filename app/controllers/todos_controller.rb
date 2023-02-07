# frozen_string_literal: true

class TodosController < ApplicationController
  def index
    @todos = Todo.order(created_at: :desc).all
  end

  def create
    user = User.first
    @todo = user.todos.build(todo_params)

    @todo.save || flash[:notice] = @todo.errors.full_messages

    redirect_to action: :index
  end

  def toggle
    toggle_status(params[:id])

    render json: { message: 'Success' }
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    redirect_to action: :index
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :user)
  end

  def toggle_status(id)
    Todo.find_by(id:).toggle!(:completed)
  end
end
