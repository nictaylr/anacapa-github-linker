class AddSlackForeignKeyToCourses < ActiveRecord::Migration[5.1]
  def change
    add_reference :courses, :slack_workspace, foreign_key: true
  end
end
