module Ruboty
  module Kinoco
    class Handler < Ruboty::Handlers::Base
      on(/ohayo(\s*)(?<date>.*)/, name: 'ohayo', hidden: true, description: 'show morning greet')

      def ohayo(message)
        message.reply('おはようございます。今日の予定です。')
        ::Ruboty::Actions::Ragoon.new(message).call
      end
    end
  end
end
