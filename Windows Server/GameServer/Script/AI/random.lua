function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("Ready, Go!") 
                rand = AI:GetRand(1)
                if rand == 0 then
                    AI:Say("Live")
                end
                if rand == 1 then
                    AI:Say("Die")
                end
                AI:SetArray(1,1)
            end
        end
    end
end     