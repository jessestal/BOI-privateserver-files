--?? 
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
                AI:Say("I'm thirsty for blood!")
                AI:SetArray(4,1)    
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.75 then
                AI:Say("Blood Fury!")
                AI:AddSkill(8614,6)
                AI:UseSkill(8914,6)
                AI:SetArray(4,2)    
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:Say("Blood Fury!")
                AI:AddSkill(8614,6)
                AI:UseSkill(8914,6)
                AI:SetArray(4,3)    
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.25 then
                AI:Say("Blood Fury!")
                AI:AddSkill(8614,6)
                AI:UseSkill(8914,6)
                AI:SetArray(4,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.1 then
                AI:Say("The life of Blood Fury must be filled with blood!")
                AI:AddSkill(8627,6)
                AI:UseSkill(8927,6)
                AI:SetArray(4,5)
            end
        end
    end
end