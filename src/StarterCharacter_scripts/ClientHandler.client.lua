--//Service
local StarterGui = game:GetService("StarterGui")

--//Module
local Globals = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Globals"))

--//Code

--/StarterGui
Globals:GetComponent(StarterGui:WaitForChild("Client"),{"Hello","Bro"})