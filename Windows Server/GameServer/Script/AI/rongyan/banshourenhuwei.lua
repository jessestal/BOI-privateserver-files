    --????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???????
        AI:GetRandTarget()
        AI:AddSkill(8884,1)
        AI:UseSkill(8884,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
    else
        a = AI:GetArray(1)
        if a == 0 then 
            AI:Say("For the king of the rings!") 
            AI:SetTimer(0,7000,65535)
            AI:SetArray(1,1)
        end
    end
end
