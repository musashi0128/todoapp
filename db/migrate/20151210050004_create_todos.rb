class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.integer :todo_list_id, null: false # NOT NULL制約を追加
      t.string :description,   null: false # NOT NULL制約を追加
      t.boolean :completed,    null: false, default: false # NOT NULL制約とデフォルト値を追加

      t.timestamps null: false
    end
  end
end
