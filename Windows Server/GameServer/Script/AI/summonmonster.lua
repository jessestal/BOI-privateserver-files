function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(4)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("Fight with me, my children!")
                --??3????? 
                AI:SummonMonster(10103,3)
                AI:SetArray(4,1)
            else
                AI:SetArray(4,0) 
            end
        end        
end