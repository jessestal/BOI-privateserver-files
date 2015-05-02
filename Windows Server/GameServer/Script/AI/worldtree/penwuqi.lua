function Event_OnTimer(nAI, nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
    		PosX = AI:GetPosX()
        PosY = AI:GetPosY()
        AI:SummonMonsterByPos(51396, PosX, PosY)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)

    a = AI:GetArray(1)
       if a == 0 then
          AI:SetTimer(0, 8000, 65535)
          AI:SetArray(1,1)
       end
end