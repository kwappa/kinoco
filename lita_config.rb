Lita.configure do |config|
  config.robot.name = 'kinoco'
  config.robot.log_level = :info
  config.robot.adapter = :slack
  config.adapters.slack.token = ENV['SLACK_TOKEN']
end
