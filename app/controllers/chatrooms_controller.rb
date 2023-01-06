class ChatroomsController < ApplicationController
  def index
    if params[:query].present?
      @chatrooms = Chatroom.search_by_name(params[:query])
    else
      @chatrooms = Chatroom.all
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
