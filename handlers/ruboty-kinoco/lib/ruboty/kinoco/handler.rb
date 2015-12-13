module Ruboty
  module Kinoco
    class Handler < Ruboty::Handlers::Base
      on(/ohayo(\s*)(?<date>.*)/,    name: 'ohayo',    hidden: true, description: 'show morning greet')
      on(/otsukare(\s*)(?<date>.*)/, name: 'otsukare', hidden: true, description: 'show after-work greet')

      def ohayo(message)
        message.reply('おはようございます。今日の予定です。')
        ::Ruboty::Actions::Ragoon.new(message).call
      end

      def otsukare(message)
        date = Date.parse(message[:date]) rescue Date.today
        date_str = case date
                   when Date.today
                     '今日'
                   when Date.today + 1
                     '明日'
                   else
                     date.strftime('%F')
                   end

        message.reply("おつかれさまでした。#{date_str}の予定です。")
        ::Ruboty::Actions::Ragoon.new(message).call
      end
    end
  end
end