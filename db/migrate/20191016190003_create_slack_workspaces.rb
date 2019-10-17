class CreateSlackWorkspaces < ActiveRecord::Migration[5.1]
  def change
    create_table :slack_workspaces do |t|
      t.string :name

      t.timestamps
    end
  end
end
