import consumer from "./consumer"

consumer.subscriptions.create("CommentsChannel", {
  connected() {
    console.log('CommentsChannel Connected!');
  },

  disconnected() {
    console.log('CommentsChannel Disconnected!');
  },

  received(data) {
    // TODO: check how to use js libraries with Ruby on Rails
    // $('#comments').append(data.comment);
    let node = document.createElement('p');
    node.innerHTML = data.comment;
    document.getElementById('comments').appendChild(node);
  }
});
