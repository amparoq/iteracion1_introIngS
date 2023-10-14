class AddProyectReffToGroup < ActiveRecord::Migration[7.0]
  def change
    add_reference :groups, :project, null: false, foreign_key: true
  end
end
