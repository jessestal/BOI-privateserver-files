function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        AI:SummonMonster(21260, 1)
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
        AI:SetTimer(0,1000,10)
        AI:SetTimer(1,9000,1)
        AI:SetArray(1,1)
    end
end