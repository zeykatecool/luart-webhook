--[[
 Project Title : Luart Discord Webhook Module
 Project Author : zeykatecool
]]

local WebHook = {
    WebhookID = 0,
    WebhookToken = "",
}
local NET = require("net")
local JSON = require("JSON")
function WebHook.SetId(num)
    if type(num) ~= "number" then
         error("Webhook ID must be a number.Not a "..type(num))
    else
        WebHook.WebhookID = num
        return true
    end
end
function WebHook.SetToken(token)
    if type(token) ~= "string" then
         error("Webhook Token must be a string.Not a "..type(token))
    else
        WebHook.WebhookToken = token
        return true
    end
end

function WebHook.Send(tbl)
    if WebHook.WebhookID == 0 or WebHook.WebhookToken == "" then
        error("Webhook ID or Token not set")
    end
    if type(tbl) ~= "table" then
         error("Webhook send value must be a table.Not a "..type(tbl))
    else
        local JSONed = JSON.encode(tbl)
local Discord = NET.Http("https://discord.com")
Discord.headers["Content-Type"] = "application/json"
        Discord:post("/api/webhooks/"..WebHook.WebhookID.."/"..WebHook.WebhookToken, JSONed).after = function(self, response)
          if not response then
              error("Failed to send webhook : "..NET.error)
          end
            if response.status == 204 then
                return true
            else
                for k,i in pairs(response) do
                    print(k,i)
                end
                error("Failed to send webhook : "..response.status)
            end
        end
        waitall()
        end
end

return WebHook
