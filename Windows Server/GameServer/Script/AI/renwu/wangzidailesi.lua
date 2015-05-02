--??????AI

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --DOT 
        AI:AddSkill(8797,1)
        AI:UseSkill(8797,1)
    end
    if nIndex == 1 then
        --AOE 
        AI:AddSkill(8798,1)
        AI:UseSkill(8798,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)

t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:SetArray(4,0)
    else                   
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                                    
        a = AI:GetArray(4)
        if a == 0 then
            if HP < HPMAX then
                AI:SetTimer(0,15000,65535)
                AI:SetTimer(1,35000,65535)
                AI:AddSkill(8798,1)
                AI:UseSkill(8798,1)
                AI:SetArray(4,1)    
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.05 then
                AI:Say("I release from curse finally. Karina, my love, I'm eager to come back to you!")
                AI:SetArray(4,2)    
            end
        end
    end  
end