class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
  	# ActionCable.server.broadcast 'room_channel', message: data['data']
  	  # binding.pry
     #if data == current_shop_id.empty?
    	Message.create(user_id: data['current_user_id'], room_id: params['room_id'], message: data['data'])
    	ActionCable.server.broadcast "room_channel", data
  end

  def talk(data)
      # binding.pry
      Message.create(shop_id: data['current_shop_id'], room_id: params['room_id'], message: data['data'])
      ActionCable.server.broadcast "room_channel", data
  end

  # def perform(message)
  #   ActionCable.server.broadcast 'room_channel', message: render_message(message)
  # end
  # def speak(data)
  # 	Chat.create(user_id: data['current_user_id'], room_id: params['room_id'], message: data['data'])
  #   ActionCable.server.broadcast "chat_channel_#{params['room_id']}", data
  # end

  # private

  #   def render_message(message)
  #     ApplicationController.renderer.render partial: 'messages/message', locals: { message: message }
  #   end
end
