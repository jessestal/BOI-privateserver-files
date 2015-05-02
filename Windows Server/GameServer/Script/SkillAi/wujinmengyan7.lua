function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        AI:AddSkill(12047,7)
        AI:UseSkill(12047,7)
        AI:AddSkill(12048,7)
        AI:UseSkill(12048,7)
        AI:AddSkill(12049,7)
        AI:UseSkill(12049,7)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    a = AI:GetArray(1)
    if a == 0 then
        AI:SetTimer(0,2000,65535)
        AI:AddSkill(12047,7)
        AI:UseSkill(12047,7)
        AI:AddSkill(12048,7)
        AI:UseSkill(12048,7)
        AI:AddSkill(12049,7)
        AI:UseSkill(12049,7)
        AI:SetArray(1,1)
    end
end