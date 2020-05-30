class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    	Message.create(user_id: data['current_user_id'], room_id: params['room_id'], message: data['data'])
    	ActionCable.server.broadcast "room_channel", data
  end

  def talk(data)
      Message.create(shop_id: data['current_shop_id'], room_id: params['room_id'], message: data['data'])
      ActionCable.server.broadcast "room_channel", data
  end

end

