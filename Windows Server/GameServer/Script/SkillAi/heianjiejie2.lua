function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        AI:AddSkill(12027,2)
        AI:UseSkill(12027,2)
        AI:AddSkill(12028,2)
        AI:UseSkill(12028,2)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    a = AI:GetArray(1)
    if a == 0 then
        AI:SetTimer(0,2000,65535)
        AI:AddSkill(12027,2)
        AI:UseSkill(12027,2)
        AI:AddSkill(12028,2)
        AI:UseSkill(12028,2)
        AI:SetArray(1,1)
    end
end