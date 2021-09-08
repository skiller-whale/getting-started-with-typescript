const message = 'Hello, TypeScript!'

let messages = []

for (let i = 0; i < 3; i++) {
  messages.push(`${message} ${i + 1}`)
}

function formatMessages (messages: string[]) {
  console.log(messages.join('\n'))
}

// Note that there is a typo in this function call; don't correct
// it until indicated.
formatMessage(messages)
