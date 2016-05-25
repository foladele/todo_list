class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :list
      t.text :body

      t.timestamps null: false
    end
  end
end
