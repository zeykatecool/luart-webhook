# luart-webhook
- [webhook.lua](https://github.com/zeykatecool/luart-webhook/blob/main/webhook.lua) is module for sending webhooks with LuaRT HTTP package.
- [LuaRT Website](https://luart.org/)
- [LuaRT Github](https://github.com/samyeyo/LuaRT)
- [Discord Webhook Documentation](https://discord.com/developers/docs/resources/webhook)
- [How to create Webhooks](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks)

# What is Webhook ID and Token
```md
- https://discord.com/api/webhooks/1192836687781429258/cihZ3rAi-_Q-216cwD6Wt02ZTxcGXrwNIKuN8HgGHW9nPwp9Xb7FR7_d5y5k9Kl3XzyK
- This is a example webhook url
```
- `1192836687781429258` is Webhook ID
- `cihZ3rAi-_Q-216cwD6Wt02ZTxcGXrwNIKuN8HgGHW9nPwp9Xb7FR7_d5y5k9Kl3XzyK` is Webhook Token

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
    title = "LuaRT Webhook Module",
    description = "Hello World!",
    footer = {
      text = "Send with LuaRT HTTP Module",
    },
    }
  },
  color = 000000,
  username = "My Good Webhook",
}

Webhook.Send(WillSend)
```
