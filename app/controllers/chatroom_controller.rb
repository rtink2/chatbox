class ChatroomController < ApplicationController
    
    def index
        @chats = Chat.all
    end
    
end