--³å»÷Ë®¾§ËéÆ¬
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        AI:AddSkill(8578,1)
        AI:UseSkill(8578,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    a = AI:GetArray(1)
    if a == 0 then
        AI:SetTimer(0,3000,1)
        AI:SetArray(1,1)
    end
end