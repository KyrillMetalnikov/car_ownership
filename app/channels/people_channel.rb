class PeopleChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'people'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
