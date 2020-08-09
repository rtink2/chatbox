class ChatroomController < ApplicationController
    before_action :require_user
    
    def index
        @chat = Chat.new
        @chats = Chat.custom_display
    end
    
end