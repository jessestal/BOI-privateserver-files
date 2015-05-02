function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
t = AI:HaveAttackTarget()
    if t == false then
        AI:SetArray(4,0)
    else 
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                                    
        a = AI:GetArray(4)
        if a == 0 then
            if HP < HPMAX * 0.9 then
                AI:Say("My power is restrained by a enchantment. but I must punish you!")
                AI:SetArray(4,1)    
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.5 then
                AI:Say("Why? Why the enchantment is so powerful? Did Budle ever rest?")
                AI:SetArray(4,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.1 then
                AI:Say("Why? Why I can't revenge my clansmen with my powerful force?")
                AI:SetArray(4,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.05 then
                AI:Say("I curse you! The power of demons will corrode your heart!")
                AI:SetArray(4,4)
            end
        end
    end
end