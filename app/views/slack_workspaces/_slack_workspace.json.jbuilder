json.extract! slack_workspace, :id, :created_at, :updated_at
json.url slack_workspace_url(slack_workspace, format: :json)
