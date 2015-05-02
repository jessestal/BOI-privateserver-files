--???? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --??
        AI:Say("For our undead, death corresponds to rebirth!")  
    end
    if nIndex == 1 then
        --??
        AI:Say("Hahaha, stupid human beings!")  
    end
    if nIndex == 2 then
        --??
        AI:Say("I will never die! Haha!")  
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
        a = AI:GetArray(4)
        if a == 0 then
            rand = AI:GetRand(2)
            if rand == 0 then
                AI:SetTimer(0,1000,1)
            end
            if rand == 1 then
                AI:SetTimer(1,1000,1)
            end
            if rand == 2 then
                AI:SetTimer(2,1000,1)
            end
            AI:SetArray(4,1)
        end
end