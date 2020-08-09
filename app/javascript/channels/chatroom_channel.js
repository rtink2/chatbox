import consumer from "./consumer"
/* global $ */
/* global scroll_bottom */
consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $('#chat-container').append(data.mod_chat);
    scroll_bottom();
  }
});
