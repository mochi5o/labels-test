require_relative './.env.rb'
require 'octokit'
@name = 'mochi5o'
@token = $ACCESS_TOKEN

client = Octokit::Client.new(:access_token => @token)

repos = client.repositories(@name)

repos.each do |repo|
  puts "name: #{repo.name}, language: #{repo.language}"
  puts "url: #{repo.url}"
  puts ""
end
