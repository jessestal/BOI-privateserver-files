function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        AI:AddSkill(8843,3)
        AI:UseSkill(8843,3)
    end
    if nIndex == 1 then
        --вти╠
        AI:SelfMurder()
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    a = AI:GetArray(1)
    if a == 0 then
        AI:SetTimer(0,5000,1)
        AI:SetTimer(1,5500,1)
        AI:SetArray(1,1)
    end
end