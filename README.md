# luart-webhook
- [webhook.lua](https://github.com/zeykatecool/luart-webhook/blob/main/webhook.lua) is module for sending webhooks with Luart HTTP package.
- [Luart Website](https://luart.org/)
- [Luart Github](https://github.com/samyeyo/LuaRT)

# How to Use
- Just add [webhook.lua](https://github.com/zeykatecool/luart-webhook/blob/main/webhook.lua) to your project and require it from lua script.

# Usage Example
```lua
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
```
