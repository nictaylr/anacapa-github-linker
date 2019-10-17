class AddFieldsToSlackWorkspaces < ActiveRecord::Migration[5.1]
  def change
    add_column :slack_workspaces, :access_token, :string
    add_column :slack_workspaces, :bot_access_token, :string
    add_column :slack_workspaces, :slack_url, :string
  end
end
