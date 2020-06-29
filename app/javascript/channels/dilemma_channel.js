import consumer from "./consumer";

const initChatroomCable = () => {
  const repliesContainer = document.getElementById('replies');
  if (repliesContainer) {
    const id = repliesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "DilemmaChannel", id: id }, {
      received(data) {
        repliesContainer.insertAdjacentHTML('beforeend', data); // called when data is broadcast in the cable
      },
    });
  }
}

export { initChatroomCable };
