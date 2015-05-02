function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        AI:AddSkill(8645,1)
        AI:UseSkill(8645,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    a = AI:GetArray(1)
    if a == 0 then
        AI:SetTimer(0,30000,65535)
        AI:AddSkill(8645,1)
        AI:UseSkill(8645,1)
        AI:SetArray(1,1)
    end
end