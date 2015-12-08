module Ruboty
  module Kinoco
    class Handler < Ruboty::Handlers::Base
      on(/echo (?<content>.+)/, name: 'echo', description: 'echo something')

      def echo(message)
        Ruboty.logger.debug 'echo'
        message.reply(message[:content])
      end

    end
  end
end
