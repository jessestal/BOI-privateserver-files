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
            if HP < HPMAX then
                AI:Say("Familiar smell and feel. Stranger, Vasho must have sent you here. Now show me how powerful you are!")
                AI:SetArray(4,1)    
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.5 then
                AI:Say("Well done. Vasho made a good choice. Come on!")
                AI:SetArray(4,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.1 then
                AI:Say("Although you have great power, you still make great efforts to defeat Ashurajan; This thing will help you kill Ashurajan. Keep it. The destiny f Naga depends on you!")
                AI:SetArray(4,3)
            end
        end
    end
end