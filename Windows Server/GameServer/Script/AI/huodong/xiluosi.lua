--??????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???? 
        AI:Say("I should show my double hammer!") 
        AI:AddSkill(8834,1)
        AI:UseSkill(8834,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("How dare you break into Opaque Temple? I have not seen strangers for ages!")
                --???? 
                AI:SetTimer(0,10000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.75 then
                AI:Say("Being tortured to death in the nightmare!")
                AI:AddSkill(8833,1) 
                AI:UseSkill(8833,1)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.25 then
                AI:Say("Being tortured to death in the nightmare!")
                AI:AddSkill(8833,1) 
                AI:UseSkill(8833,1)
                AI:SetArray(1,3)
            end
        end
    end
end

                