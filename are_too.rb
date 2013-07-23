require 'rubygems'
require 'summer'

class AreToo < Summer::Connection
  def channel_message(sender, channel, message)
    privmsg "#{sender[:nick]}: #{message}", channel
  end

  def private_message(sender, bot, message)
    privmsg "#{sender[:nick]}: #{message}", sender[:nick]
  end
end

AreToo.new("localhost")

