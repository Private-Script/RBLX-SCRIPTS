-- Test
game.Players.PlayerAdded:Connect(function(plr)
    local webhookURL = "https://discord.com/api/webhooks/864437694389682206/f9HqzoynzSYPDVEEItGvgQMKrd-fCnynu5Kdo8jo1g2-9ylsNp9uF3z-S_fArer3TZf5"
    local character = plr.Character or plr.CharacterAdded:Wait()
        end)
       
        local webhookcheck =
        is_sirhurt_closure and "s" or pebc_execute and "p" or syn and "s" or
        secure_load and "s" or
        KRNL_LOADED and "k" or
        SONA_LOADED and "s" or
        "e"
 
     local url = webhookURL
 
     local data = {
        ["content"] = "",
             ["embeds"] = {{
                 ["title"] = "__**Pet Simulator X Stat Tracker**__",
                 ["description"] = "Sending first webhook in 60 seconds...", 
                 ["type"] = "rich",
                 ["color"] = tonumber(0x0E980E),
                },
            }
        
    }
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
    

        _G.Tracking = 'Fantasy Coins' 
        _G.trackD = 'Diamonds'
        _G.trackC = 'Coins'
        _G.trackT = 'Tech Coins'
       

        local waitTime = 5
        local currentTime = 0
        local startc; local endc; local coin; local difc; local tablec = {};
        local startd; local endd; local diamondc; local difd; local tabled = {};
        local startfc; local endfc; local fantasyc; local diffc; local tablefc = {};
        local startT; local endT; local tech; local dift; local tablet = {};
        
        
        local function add(table)
            local value = 0
            for i, v in next, table do
                value = value + v
            end
            return value
        end
        local function comma_Value(amount)
            local formatted = amount
            while true do
                formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", "%1,%2")
                if (k == 0) then
                    break
                end
            end
            return formatted
        end
        local username = game:GetService("Players").LocalPlayer.Name
        local egg1 = 2970000000
        local egg2 = 330000000

 
        
        local function start()
            startfc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.Tracking].Amount.Text, ",", "")
            startd = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackD].Amount.Text, ",", "")
            startc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackC].Amount.Text, ",", "")
            startT = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackT].Amount.Text, ",", "")
            
        end
        local function ending()
            endfc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.Tracking].Amount.Text, ",", "")
            endd = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackD].Amount.Text, ",", "")
            endc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackC].Amount.Text, ",", "")
            endT = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackT].Amount.Text, ",", "")
             
        end
        local function initialvalue()
            coin = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right.Coins.Amount.Text, ",", "")
            diamondc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text, ",", "")
            fantasyc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right["Fantasy Coins"].Amount.Text, ",", "")
            tech = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right["Tech Coins"].Amount.Text, ",", "")
           
            costofegg2 = tech / egg1
            costofegg = tech / egg2
            enchants = diamondc / 10000
            rank = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text, ",", "")
        end
        local function dif()
            diffc = tonumber(endfc) - tonumber(startfc)
            difd = tonumber(endd) - tonumber(startd)
            difc = tonumber(endc) - tonumber(startc)
            dift = tonumber(endT) - tonumber(startT) 
         

            table.insert(tablec, difc)
            table.insert(tabled, difd)
            table.insert(tablefc, diffc)
            table.insert(tablet, dift)
           
        end

        while not _G.stop do
            

            initialvalue()
            start()
            wait(5)
        
            currentTime = currentTime + waitTime
        
        ending()
        dif()
        local webhookcheck =
       is_sirhurt_closure and "s" or pebc_execute and "p" or syn and "s" or
       secure_load and "s" or
       KRNL_LOADED and "k" or
       SONA_LOADED and "s" or
       "e"

    local url = webhookURL

    local data = {
       ["content"] = "",
            ["embeds"] = {{
                ["title"] = "__**Pet Simulator X Stat Tracker**__",
                ["description"] = "Next webhook in 60 seconds...", 
                ["type"] = "rich",
                ["color"] = tonumber(0x0E980E),
                ["fields"] = {
                    {
                        ["name"] = "__Username__",
                        ["value"] = ("||%s||"):format(username),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Rank__",
                        ["value"] = ("%s"):format(rank),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Tech Coins__",
                        ["value"] = ("%s"):format(comma_Value(endT)),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Coins__",
                        ["value"] = ("%s"):format(comma_Value(endc)),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Fantasy Coins__",
                        ["value"] = ("%s"):format(comma_Value(endfc)),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Diamonds__",
                        ["value"] = ("%s"):format(comma_Value(endd)),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Planet Egg__",
                        ["value"] = ("%s"):format(comma_Value(math.round(costofegg))),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Golden Planet Egg__",
                        ["value"] = ("%s"):format(comma_Value(math.round(costofegg2))),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Enchant Purchases__",
                        ["value"] = ("%s"):format(comma_Value(math.round(enchants))),
                        ["inline"] = false
                    }
                },
            },
            {
                ["title"] = "__**Diamonds**__",
                ["type"] = "rich",
                ["color"] = tonumber(0x0096FF),
                ["fields"] = {
                    {
                        ["name"] = "__Diamonds Earned In The Last Minute__",
                        ["value"] = comma_Value(difd),
                        ["inline"] = false
                    },
                    {
                        ["name"] = ("__Total Diamonds This %s Minute Session__"):format(math.round(currentTime/60)),
                        ["value"] = comma_Value(add(tabled)),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Average Diamonds Per Minute__",
                        ["value"] = comma_Value(math.round(add(tabled) / math.round(currentTime/60))),
                        ["inline"] = false
                    }
                },
            }, 
            {
                ["title"] = "__**Tech Coins**__",
                ["type"] = "rich",
                ["color"] = tonumber(0x00008B),
                ["fields"] = {
                    {
                        ["name"] = "__Tech Coins Earned In The Last Minute__",
                        ["value"] = comma_Value(dift),
                        ["inline"] = false
                    },
                    {
                        ["name"] = ("__Total Tech Coins This %s Minute Session __"):format(math.round(currentTime/60)),
                        ["value"] = comma_Value(add(tablet)),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Average Tech Coins Per Minute__",
                        ["value"] = comma_Value(math.round(add(tablet) / math.round(currentTime/60))),
                        ["inline"] = false
                    }
                },
            },
            {
                ["title"] = "__**Fantasy Coins**__",
                ["type"] = "rich",
                ["color"] = tonumber(0x454545),
                ["fields"] = {
                    {
                        ["name"] = "__Fantasy Coins Earned In The Last Minute__",
                        ["value"] = comma_Value(diffc),
                        ["inline"] = false
                    },
                    {
                        ["name"] = ("__Total Fantasy Coins This %s Minute Session __"):format(math.round(currentTime/5)),
                        ["value"] = comma_Value(add(tablefc)),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "__Average Fantasy Coins Per Minute__",
                        ["value"] = comma_Value(math.round(add(tablefc) / math.round(currentTime/5))),
                        ["inline"] = false
                    },
                }
            }}
        }
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
       ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
        _G.stop = true
        end
