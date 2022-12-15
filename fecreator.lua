--LOAD SETTINGS

getgenv().SecureMode = true --secure mode, may make the ui look a bit worse quality and increase loading times but remains more undetected

--Dont touch the rest unless you know what are you doing!

local codetable = {[[
--Made with FECreator

]]}

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "FECreator",
	LoadingTitle = "FECreator, create FE scripts without alot of coding.",
	LoadingSubtitle = "by Alexplayrus1#0746",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "FECreator", -- Create a custom folder for your hub/game
		FileName = "configshit"
	},
        Discord = {
        	Enabled = false,
        	Invite = "sirius", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "FECreator",
		Subtitle = "Key System",
		Note = "The key is i hate skids",
		FileName = "fecreatorKey",
		SaveKey = true,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "i hate skids"
	}
})

local Tab = Window:CreateTab("Home", 4483362458)
local Label = Tab:CreateLabel("FECreator")
local Label = Tab:CreateLabel("Made by Alexplayrus1#0746")
local Label = Tab:CreateLabel("Uses Rayfield UI")

local Paragraph = Tab:CreateParagraph({Title = "Whats new?", Content = "We just released!"})

local Tab2 = Window:CreateTab("Create Code", 4483362458)
local Tab3 = Window:CreateTab("My Code", 4483362458)

local Button = Tab2:CreateButton({
	Name = "Set generated code to clipboard",
	Callback = function()
		setclipboard(table.concat(codetable))
	end,
})
local Button = Tab2:CreateButton({
	Name = "Rayfield Initialize",
	Callback = function()
		table.insert(codetable, [[local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

]])
Tab3:CreateLabel("Rayfield Init.")
end,
})
local Button = Tab2:CreateButton({
	Name = "Rayfield Secure mode (Put above rayfield init to make your ui more undetected)",
	Callback = function()
		table.insert(codetable, [[getgenv().SecureMode = true --secure mode, may make the ui look a bit worse quality and increase loading times but remains more undetected

]])
Tab3:CreateLabel("Rayfield Secure Mode")

end,
})

local rfname = nil

local Input = Tab2:CreateInput({
	Name = "Window name",
	PlaceholderText = "Rayfield window name",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		rfname = Text
	end,
})

local Button = Tab2:CreateButton({
	Name = "Create Rayfield window",
	Callback = function()
		table.insert(codetable, [[local Window = Rayfield:CreateWindow({
	Name = "]] .. rfname .. [[",
	LoadingTitle = "]] .. rfname .. [[",
	LoadingSubtitle = "Created with FECreator",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "FECreatorScripts", -- Create a custom folder for your hub/game
		FileName = "config"
	},
        Discord = {
        	Enabled = false,
        	Invite = "sirius", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "FECreator",
		Subtitle = "Key System",
		Note = "The key is i hate skids",
		FileName = "fecreatorKey",
		SaveKey = true,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "i hate skids"
	}
})

local Tab = Window:CreateTab("UI Tab", 4483362458) -- Title, Image

]])
Tab3:CreateLabel("Rayfield Window")
end,
})

local buttonname = nil

local Input = Tab2:CreateInput({
	Name = "Button Name",
	PlaceholderText = "Button",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		buttonname = Text
	end,
})

local Button = Tab2:CreateButton({
	Name = "Rayfield button",
	Callback = function()
		table.insert(codetable, [[
      local Button = Tab:CreateButton({
	Name = "]] .. buttonname .. [[",
	Callback = function()

]])
Tab3:CreateLabel(buttonname)

	end,
})

local Button = Tab2:CreateButton({
	Name = "Rayfield UI object function end",
	Callback = function()
		table.insert(codetable, [[end,
})

]])
Tab3:CreateLabel("Rayfield end")

	end,
})


local Button = Tab2:CreateButton({
	Name = "end",
	Callback = function()
		table.insert(codetable, [[end

]])
Tab3:CreateLabel("end")

	end,
})

local Button = Tab2:CreateButton({
	Name = "end)",
	Callback = function()
		table.insert(codetable, [[end)

]])
Tab3:CreateLabel("end)")

	end,
})

local chattriggertext = nil

local Input = Tab2:CreateInput({
	Name = "Chat trigger message",
	PlaceholderText = "Chat trigger message goes here",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		chattriggertext = Text
	end,
})

local Button = Tab2:CreateButton({
	Name = "Create a chat trigger",
	Callback = function()
		table.insert(codetable, [[local args = {
    [1] = "]] .. chattriggertext .. [[",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

]])
Tab3:CreateLabel("Say " .. chattriggertext)

	end,
})

local blockhat = nil

local Input = Tab2:CreateInput({
	Name = "Hats instance name to make blocky (get using dex)",
	PlaceholderText = "Necklace",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		blockhat = Text
	end,
})

local Button = Tab2:CreateButton({
	Name = "Make a hat blocky",
	Callback = function()
		table.insert(codetable, [[game.Players.LocalPlayer.Character.]] .. blockhat .. [[.Handle.Mesh:Destroy()

]])
Tab3:CreateLabel("Make " .. blockhat .. " blocky")

	end,
})

local Button = Tab2:CreateButton({
	Name = "While True Loop (Supports and requires wait, end with end)",
	Callback = function()
		table.insert(codetable, [[while true do

]])
Tab3:CreateLabel("Loop")

	end,
})

local waittime = nil

local Input = Tab2:CreateInput({
	Name = "Wait time",
	PlaceholderText = "1",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		waittime = Text
	end,
})

local Button = Tab2:CreateButton({
	Name = "Wait",
	Callback = function()
		table.insert(codetable, [[wait(]] .. waittime .. [[)

]])
Tab3:CreateLabel("Wait " .. waittime .. " seconds")

	end,
})

local Button = Tab2:CreateButton({
	Name = "RenderStepped Loop (Does not support and require wait, end with end))",
	Callback = function()
		table.insert(codetable, [[local runservice = game:GetService("RunService")
runservice.RenderStepped:Connect(function()

]])
Tab3:CreateLabel("Step Loop")

	end,
})