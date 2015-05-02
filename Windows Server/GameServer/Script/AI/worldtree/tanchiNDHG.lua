function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()

        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX * 0.8 then
                AI:Say("I hate to be disturbed when I'm eating!")
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.6 then
                AI:Say("The stupid gardener actually thought his pesticide would hurt me?")
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.4 then
                AI:Say("No! The World Tree is mine to devour! I will not allow you to ruin my feast!")
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.2 then
                AI:Say("Hey! Watch what you're doing! You'll pay for that!")
                AI:SetArray(1,4)
            end
        end
end

function Event_OnDead(nAI)
			local AI = GetMonsterAI(nAI)
			
         AI:Say("Now I'm angry! I'll tear down your World Tree and gnaw at its roots for eternity!") 
         AI:OpenMapMask(3)
         
end
 
  