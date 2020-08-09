class ChatsController < ApplicationController
    before_action :require_user
    
    def create
        chat = current_user.chats.build(chat_params)
        if chat.save
            ActionCable.server.broadcast "chatroom_channel", mod_chat: chat_render(chat)
        end
    end
    
    private
    
    def chat_params
        params.require(:chat).permit(:body)
    end
    
    def chat_render(chat)
        render(partial: 'chat', locals: {chat: chat})
    end
end