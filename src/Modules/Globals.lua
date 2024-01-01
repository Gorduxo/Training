local Lighting = game:GetService("Lighting")
local self = {}

--//Services
self.Players = game:GetService("Players")
self.ReplicatedStorage = game:GetService("ReplicatedStorage")
self.TweenService = game:GetService("TweenService")
self.RunService = game:GetService("RunService")
self.MarketplaceService = game:GetService("MarketplaceService")
self.Lighting = game:GetService("Lighting")

--//Functions
if self.RunService:IsClient() then
--/Client
self.LocalPlayer = self.Players.LocalPlayer
self.Character = self.LocalPlayer.Character or self.LocalPlayer.CharacterAdded:Wait()
self.Humanoid = self.Character:WaitForChild("Humanoid")

else

--/Server
end

--/Wideside
function self:GetComponent(Component,Args)
 for _, component in Component:GetChildren() do
    if component:IsA("ModuleScript") then
        local sucess, fail = pcall(require(component),self,Args)
        if fail then
            print(fail)
        end
    end
 end
end

return self