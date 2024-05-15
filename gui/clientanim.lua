local function setAnimations()
    while true do
        wait(1)
        

        for i, player in ipairs(game.Players:GetPlayers()) do
            if player.Character and player.Character:FindFirstChild("Animate") then
                local Animate = player.Character.Animate
                
                Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
                Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782841498"
                Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
                Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
                Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
                Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
                Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
                
                if player.Character:FindFirstChild("Humanoid") then
                    player.Character.Humanoid.Jump = false
                end
            end
        end
    end
end

setAnimations()
