function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        AI:SelfMurder()
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    
        a = AI:GetArray(0)
        --15√Î∫Ûœ˚ ß 
        if a == 0 then
            AI:SetTimer(0,15000,65535)
            AI:SetArray(0,1)
        end    
end