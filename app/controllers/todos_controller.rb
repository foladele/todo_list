class TodosController < ApplicationController
  def index
  	@lists = Todo.all
  end

  def new
  	@list = Todo.new
  end

   def show
    @list = Todo.find(params[:id])
  end

  def edit
  	@list = Todo.find(params[:id])
  end

  def update
    @list = Todo.find(params[:id])
    if @list.update(todo_params)
      redirect_to todo_path
    else
      render :edit
    end
  end

  def destroy
  	Todo.find(params[:id]).destroy
  	redirect_to todos_path
  end

  def create
  	if Todo.create(todo_params)
  		redirect_to todos_path
  	else
  		render :new
  	end
  end

  private

  def todo_params
  	params.require(:todo).permit(:list, :completed)
  end
end
