class LineJoinedChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    @line_joined = Line.find_by(id:params[:room])
    stream_for @line
  end

  def received(data)
    # LineJoinedChannel.broadcast_to(@line_joined, @line.users)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end