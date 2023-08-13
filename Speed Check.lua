local toggle = false
local LocalPlayer = game.Players.LocalPlayer

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.P then
        toggle = not toggle
    end
end)


game:GetService("RunService").RenderStepped:Connect(function()
    if toggle == true then
        local speed = LocalPlayer.Character.HumanoidRootPart.Velocity.Magnitude
        print("studs/s", speed)
        print("km/h", speed/20*3.6)
    end
end)
