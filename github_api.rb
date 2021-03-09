require_relative './.env.rb'
require 'octokit'
@name = 'mochi5o'
@token = $ACCESS_TOKEN

client = Octokit::Client.new(:access_token => @token)

events = client.repository_issue_events(:repo => 'TIL', :user => @name)
p events[0]
