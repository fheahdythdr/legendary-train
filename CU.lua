local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("Catter's Utilities")
local b = w:CreateFolder("Aimhot, Infinite Store, etc.")

b:Button("AimHot", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Herrtt/AimHot-v8/master/Main.lua", true))()
end)

b:Button("CMD-X", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
end)

b:Button("Infinite Store", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Infinite-Store/Infinite-Store/main/main.lua"))()
end)

b:Button("LagSwitch", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/miniature-tribble/main/LagSwitch.lua"))()
end)

b:Button("Server Browser", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lynk-Softworks/Valerie/main/serverBrowser.lua", true))()
end)

local b = w:CreateFolder("Mostly Universal",{
    TextSize = 25;
    TextColor= Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(0,0,0);
})
 
b:Button("VG Hub", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
end)

 
b:Button("Cattori Hub", function()
    loadstring(game:HttpGet("https://cattori.xyz/main.lua"))()
end)

local b = w:CreateFolder("Memes",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(0,0,0)
    })
 
b:Button("Ukraine", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/miniature-tribble/main/Ukraine.lua"))()
end)

b:Button("Invis Car", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/miniature-tribble/main/car.lua"))()
end)

local b = w:CreateFolder("BIG Paintball",{
    TextSize = 25;
    TextColor= Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(0,0,0);
})
 
b:Button("Unlock All", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/miniature-tribble/main/big%20paintball%20unlock%20all.lua"))()
end)

b:Button("omaewa mou", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/miniature-tribble/main/teleports%20behind%20you.lua"))()
end)

b:Button("KillAll", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/The3Bakers4565/Spicy-Bagel/main/Other/Big_Paintball/Kill_All.lua"))()
end)

game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Script Utils";
Text = "Executed, look in the top left.";
Duration = 8;
})

game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Hide Keybind";
Text = "Press Right Ctrl to hide the gui.";
Duration = 12.5;
})
