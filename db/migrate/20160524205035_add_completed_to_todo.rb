class AddCompletedToTodo < ActiveRecord::Migration
  def change
  	remove_column :todos, :body
  	add_column :todos, :completed, :boolean
  end
end
