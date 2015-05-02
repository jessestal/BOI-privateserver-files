--????
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        AI:Say("Ow! Ow! Rise!")  
    end
    if nIndex == 1 then
        AI:Say("Ow! Poor mortals, what you did is in vain!")  
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
        a = AI:GetArray(4)
        if a == 0 then
            rand = AI:GetRand(1)
            if rand == 0 then
                AI:SetTimer(0,1000,1)
            end
            if rand == 1 then
                AI:SetTimer(1,1000,1)
            end
            AI:SetArray(4,1)
        end
end