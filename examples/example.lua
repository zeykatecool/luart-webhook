local Webhook = require("webhook")

Webhook.SetID(0000000000000000000) --Your Webhook ID Here
Webhook.SetToken("AAABBBCCCDDDEEEFFFGGGHHH") --Your Webhook Token Here

local WillSend = {
  content = "Hello World!",
  embeds = {
    {
    title = "Luart Webhook Module",
    description = "Hello World!",
    footer = {
      text = "Send with Luart HTTP Module",
    },
    }
  },
  color = 000000,
  username = "My Good Webhook",
}

Webhook.Send(WillSend)
