class AddSlackToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :slack, :string
  end
end
