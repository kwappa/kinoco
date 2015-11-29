Lita.configure do |config|
  config.robot.name                     = 'kinoco'
  config.robot.log_level                = :info
  config.robot.adapter                  = :slack
  config.adapters.slack.token           = ENV['SLACK_TOKEN']
  config.handlers.trello.public_key     = ENV['TRELLO_API_KEY']
  config.handlers.trello.token          = ENV['TRELLO_API_TOKEN']
  config.handlers.trello.board          = ENV['TRELLO_BOARD_ID']
  config.handlers.ragoon.slack_owner_id = ENV['SLACK_OWNER_ID']
  config.handlers.ragoon.slack_room_id  = ENV['SLACK_ROOM_ID']

  config.redis[:url] = ENV['REDISTOGO_URL']
  config.http.port   = ENV['PORT']
end
