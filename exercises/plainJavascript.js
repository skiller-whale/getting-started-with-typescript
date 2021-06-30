const message = 'Hello, JavaScript!';

let messages = [];

for (let i = 0; i < 3; i++) {
  messages.push(`${message} ${i + 1}`);
}

function formatMessages(messages) {
  console.log(messages.join('\n'));
}

// Note that there is deliberately a typo in this function call
formatMessage(messages);
