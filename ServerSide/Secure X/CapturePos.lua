--NOT WORKING
game:GetService("Players").PlayerAdded:Connect(function(Player)
    local Player_Position
    local X_Difference
    local Z_Difference
    Player.CharacterAdded:Connect(function(Character)
    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
        while wait(1) do
            if HumanoidRootPart then
                X_Difference = math.abs(HumanoidRootPart.Position.X - CurrentPosition.X)
                Z_Difference = math.abs(HumanoidRootPart.Position.Z - CurrentPosition.Z)
                print(Player.Name ..": X Position Difference: " .. X_Difference .. "\n" .. Player.Name ..": Z Position Difference: " .. Z_Difference)
                Player_Position = HumanoidRootPart.Position
            end
        end
    end)
end)
