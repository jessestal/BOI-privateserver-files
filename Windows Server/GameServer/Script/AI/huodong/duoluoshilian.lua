--???? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --??
        AI:Say("Fallen ritual of Summoning is under progress.")  
    end
    if nIndex == 1 then
        --??
        AI:Say("Fallen ritual of Summoning is under progress.")  
    end
    if nIndex == 2 then
        --??
        AI:Say("Fallen ritual of Summoning will be finished soon.")  
    end
    if nIndex == 3 then
        --??
        AI:Say("Fallen ritual of Summoning is under progress.")  
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
        a = AI:GetArray(4)
        if a == 0 then
            AI:SetTimer(3,10000,1)
            AI:SetTimer(0,20000,1)
            AI:SetTimer(1,30000,1)
            AI:SetTimer(2,40000,1)
            AI:SetArray(4,1)
        end
end