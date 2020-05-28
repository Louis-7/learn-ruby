import consumer from "./consumer"

consumer.subscriptions.create("CommentsChannel", {
  connected() {
    console.log('CommentsChannel Connected!');
  },

  disconnected() {
    console.log('CommentsChannel Disconnected!');
  },

  received(data) {
    $('#comments').append(data.comment);
  }
});
